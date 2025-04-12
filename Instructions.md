# Useful Commands

activate stacked cli:-

```
dart pub global activate stacked_cli
```

Add a new View:-

```
stacked create view view_name
```

Add a new Service:-

```
stacked create service service_name
```

Generate Code:-
instead of

`flutter pub run build_runner build --delete-conflicting-outputs`

we can use `stacked generate`

## To switch environments before building your app:

For development: `dart run env_manager.dart dev`

For production: `dart run env_manager.dart prod`

## Run Release

Run release build with this code:-
`dart run build_release.dart`
