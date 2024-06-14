import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          for (final Location location in locations)
            InkWell(
              child: LocationListItem(
                imageUrl: location.imageUrl,
                name: location.name,
                country: location.place,
              ),
            ),
        ],
      ),
    );
  }
}

class LocationListItem extends StatelessWidget {
  LocationListItem({
    required this.imageUrl,
    required this.name,
    required this.country,
    super.key,
  });

  final String imageUrl;
  final String name;
  final String country;
  final GlobalKey _backgroundImageKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: <Widget>[
              _buildParallaxBackground(context),
              _buildGradient(),
              _buildTitleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: <Widget>[
        Image.network(
          imageUrl,
          key: _backgroundImageKey,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Colors.transparent, Colors.black.withOpacity(0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const <double>[0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            country,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final RenderBox scrollableBox = scrollable.context.findRenderObject()! as RenderBox;
    final RenderBox listItemBox = listItemContext.findRenderObject()! as RenderBox;
    final Offset listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );

    // Determine the percent position of this list item within the
    // scrollable area.
    final double viewportDimension = scrollable.position.viewportDimension;
    final double scrollFraction = (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final Alignment verticalAlignment = Alignment(0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final Size backgroundSize = (backgroundImageKey.currentContext!.findRenderObject()! as RenderBox).size;
    final Size listItemSize = context.size;
    final Rect childRect = verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
      0,
      transform: Transform.translate(offset: Offset(0, childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

class Parallax extends SingleChildRenderObjectWidget {
  const Parallax({
    required Widget background,
    super.key,
  }) : super(child: background);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderParallax(scrollable: Scrollable.of(context));
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderParallax renderObject,
  ) {
    renderObject.scrollable = Scrollable.of(context);
  }
}

class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

class RenderParallax extends RenderBox with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
  RenderParallax({
    required ScrollableState scrollable,
  }) : _scrollable = scrollable;

  ScrollableState _scrollable;

  ScrollableState get scrollable => _scrollable;

  set scrollable(ScrollableState value) {
    if (value != _scrollable) {
      if (attached) {
        _scrollable.position.removeListener(markNeedsLayout);
      }
      _scrollable = value;
      if (attached) {
        _scrollable.position.addListener(markNeedsLayout);
      }
    }
  }

  @override
  void attach(covariant PipelineOwner owner) {
    super.attach(owner);
    _scrollable.position.addListener(markNeedsLayout);
  }

  @override
  void detach() {
    _scrollable.position.removeListener(markNeedsLayout);
    super.detach();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! ParallaxParentData) {
      child.parentData = ParallaxParentData();
    }
  }

  @override
  void performLayout() {
    size = constraints.biggest;

    // Force the background to take up all available width
    // and then scale its height based on the image's aspect ratio.
    final RenderBox background = child!;
    final BoxConstraints backgroundImageConstraints = BoxConstraints.tightFor(width: size.width);
    background.layout(backgroundImageConstraints, parentUsesSize: true);

    // Set the background's local offset, which is zero.
    (background.parentData! as ParallaxParentData).offset = Offset.zero;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // Get the size of the scrollable area.
    final double viewportDimension = scrollable.position.viewportDimension;

    // Calculate the global position of this list item.
    final RenderBox scrollableBox = scrollable.context.findRenderObject()! as RenderBox;
    final Offset backgroundOffset = localToGlobal(size.centerLeft(Offset.zero), ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final double scrollFraction = (backgroundOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final Alignment verticalAlignment = Alignment(0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final RenderBox background = child!;
    final Size backgroundSize = background.size;
    final Size listItemSize = size;
    final Rect childRect = verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
      background,
      (background.parentData! as ParallaxParentData).offset + offset + Offset(0, childRect.top),
    );
  }
}

class Location {
  const Location({
    required this.name,
    required this.place,
    required this.imageUrl,
  });

  final String name;
  final String place;
  final String imageUrl;
}

const String urlPrefix = 'https://docs.flutter.dev/cookbook/img-files/effects/parallax';
const List<Location> locations = <Location>[
  Location(
    name: 'Auchan',
    place: 'Timisoara',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/0/03/V%C3%A9lizy_2_le_23_avril_2017_-_02.jpg',
  ),
  Location(
    name: 'Carrefour',
    place: 'Timisoara',
    imageUrl: 'https://logowik.com/content/uploads/images/210_carrefour.jpg',
  ),
  Location(
    name: 'Kaufland',
    place: 'Timisoara',
    imageUrl:
        'https://kaufland.media.schwarz/is/image/schwarz/t-kaufland-magazin%20%282%29?JGstbGVnYWN5LW9uc2l0ZS00JA==',
  ),
  Location(
    name: 'Penny',
    place: 'Timisoara',
    imageUrl:
        'https://assets-eu-01.kc-usercontent.com/b50b8cce-450a-0138-7b43-de6bc2f3ad32/dfa9eff8-af7e-4d76-941f-226973049f2c/otopeni.jpg?w=1500&fm=webp&lossless=0&q=80',
  ),
  Location(
    name: 'Profi',
    place: 'Timisoara',
    imageUrl: 'https://storage0.dms.mpinteractiv.ro/media/1/1481/21335/22104753/1/profi.jpg',
  ),
];
