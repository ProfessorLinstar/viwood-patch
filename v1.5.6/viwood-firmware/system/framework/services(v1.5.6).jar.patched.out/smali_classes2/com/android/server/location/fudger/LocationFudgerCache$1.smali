.class public Lcom/android/server/location/fudger/LocationFudgerCache$1;
.super Landroid/location/provider/IS2LevelCallback$Stub;
.source "LocationFudgerCache.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/fudger/LocationFudgerCache;


# direct methods
.method public constructor <init>(Lcom/android/server/location/fudger/LocationFudgerCache;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-direct {p0}, Landroid/location/provider/IS2LevelCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .line 214
    invoke-static {}, Lcom/android/server/location/fudger/LocationFudgerCache;->-$$Nest$sfgetsTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "could not get default population density"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(I)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-static {v0}, Lcom/android/server/location/fudger/LocationFudgerCache;->-$$Nest$fgetmLock(Lcom/android/server/location/fudger/LocationFudgerCache;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/location/fudger/LocationFudgerCache;->-$$Nest$fputmDefaultCoarseningLevel(Lcom/android/server/location/fudger/LocationFudgerCache;Ljava/lang/Integer;)V

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
