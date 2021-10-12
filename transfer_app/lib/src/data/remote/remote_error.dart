class RemoteErrorResponse implements Exception {
  const RemoteErrorResponse(this.error);

  final String? error;

  @override
  String toString() {
    if (error != null) return error!;

    return 'An error occurred';
  }
}
