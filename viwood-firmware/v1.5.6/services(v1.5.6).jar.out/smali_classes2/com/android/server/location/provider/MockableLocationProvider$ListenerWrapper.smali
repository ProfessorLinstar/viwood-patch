.class public Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "MockableLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# instance fields
.field public final mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

.field public final synthetic this$0:Lcom/android/server/location/provider/MockableLocationProvider;


# direct methods
.method public static synthetic $r8$lambda$-OaxEM5nNcchTLhF3jHu6bbV1hc(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    .line 0
    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    return-void
.end method


# virtual methods
.method public final onReportLocation(Landroid/location/LocationResult;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/provider/MockableLocationProvider;->-$$Nest$fgetmProvider(Lcom/android/server/location/provider/MockableLocationProvider;)Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 339
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 342
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 343
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 2

    .line 326
    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->-$$Nest$fgetmProvider(Lcom/android/server/location/provider/MockableLocationProvider;)Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 328
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    new-instance v0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 332
    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
