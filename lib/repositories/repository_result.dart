class RepositoryResult<T> {
  final bool hasError;
  final T? result;

  final String errorMessage;

  const RepositoryResult.withError([String? errorMessage])
      : errorMessage = errorMessage ?? 'Something went wrong...',
        hasError = true,
        result = null;

  const RepositoryResult.withSuccess(this.result)
      : hasError = false,
        errorMessage = '';
}
