.class Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;
.super Ljava/lang/Object;
.source "BatterySaverPolicy.java"


# instance fields
.field public final mDebugName:Ljava/lang/String;

.field public mValue:Z

.field public final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$mget(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$minitialize(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->initialize(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V
    .locals 0

    .line 1251
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get()Z
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1264
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1265
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initialize(Z)V
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1258
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 1259
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public update(Z)V
    .locals 4

    .line 1271
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1272
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    if-eq v1, p1, :cond_0

    .line 1273
    const-string v1, "BatterySaverPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mDebugName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", updating policy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    .line 1275
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$mupdatePolicyDependenciesLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    .line 1276
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->-$$Nest$mmaybeNotifyListenersOfPolicyChange(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1278
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
