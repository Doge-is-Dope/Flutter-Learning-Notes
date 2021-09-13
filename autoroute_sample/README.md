# autoroute_sample

A new Flutter project.

## Troubleshooting

##### pub get failed 

Problem: 
```
Because every version of flutter from sdk depends on meta 1.3.0 and analyzer >=2.0.0 depends on meta ^1.7.0, flutter from sdk is incompatible with analyzer >=2.0.0.
And because auto_route_generator >=2.3.2 depends on analyzer ^2.2.0, flutter from sdk is incompatible with auto_route_generator >=2.3.2.
So, because autoroute_sample depends on both flutter any from sdk and auto_route_generator ^2.3.2, version solving failed.
```
Solution:
Add overrides
```yaml
dependency_overrides:
  meta: ^1.7.0
```

