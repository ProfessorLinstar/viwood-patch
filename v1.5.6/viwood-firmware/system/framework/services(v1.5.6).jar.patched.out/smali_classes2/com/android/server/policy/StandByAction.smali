.class public final Lcom/android/server/policy/StandByAction;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "StandbyAction.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x1080030

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    .line 34
    const-string v0, "global_action_stand_by"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/StandByAction;->getMtkStringResourceId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/SinglePressAction;->setMessageResId(I)V

    return-void
.end method


# virtual methods
.method public getMtkStringResourceId(Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    .line 60
    :try_start_0
    const-string v0, "com.mediatek.internal.R$string"

    .line 61
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 60
    invoke-static {v0, p0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get MTK resource - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StandByAction"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public onPress()V
    .locals 2

    .line 50
    :try_start_0
    const-string/jumbo p0, "power"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 51
    invoke-static {p0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Landroid/os/IPowerManager;->LowPowerStartIPO()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 54
    const-string v0, "StandByAction"

    const-string v1, "Can\'t call IPowerManager.LowPowerStartIPO()"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
