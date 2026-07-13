.class public Lcom/android/server/app/GameManagerService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 1

    .line 458
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$DeviceConfigListener;->this$0:Lcom/android/server/app/GameManagerService;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmContext(Lcom/android/server/app/GameManagerService;)Landroid/content/Context;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 460
    const-string v0, "game_overlay"

    invoke-static {v0, p1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .line 474
    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 466
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device config changed for packages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$DeviceConfigListener;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(IZ[Ljava/lang/String;)V

    return-void
.end method
