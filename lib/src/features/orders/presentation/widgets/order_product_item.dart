part of orders;

class OrderProductItem extends StatefulWidget {
  const OrderProductItem({
    super.key,
    required this.product,
  });

  final OrderProduct product;

  @override
  State<OrderProductItem> createState() => _OrderProductItemState();
}

class _OrderProductItemState extends State<OrderProductItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${widget.product.quantity} x '),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${widget.product.name}'),
                if(widget.product.observations.isNotEmpty)
                  Text('${widget.product.observations}'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}