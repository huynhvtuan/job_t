# job_t

## Production

- Run app

  > flutter run --flavor prod -t lib/main_prod.dart

- Build app

  > flutter build ipa --flavor prod -t lib/main_prod.dart

  > flutter build apk --flavor prod -t lib/main_prod.dart

  > flutter build appbundle --flavor prod -t lib/main_prod.dart

## Dev

- Run app

  > flutter run --flavor dev -t lib/main_dev.dart

- Build app

  > flutter build ipa --flavor dev -t lib/main_dev.dart

  > flutter build apk --flavor dev -t lib/main_dev.dart

## Build App sh

- Production:

  > ENV=prod ./build_app_with_flavor.sh

- Dev:
  > ENV=dev ./build_app_with_flavor.sh
