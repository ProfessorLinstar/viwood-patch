.class public final Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;
.super Ljava/lang/Object;
.source "RadioServiceUserControllerImpl.java"

# interfaces
.implements Lcom/android/server/broadcastradio/RadioServiceUserController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUserId()I
    .locals 0

    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public getCurrentUser()I
    .locals 2

    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 46
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    throw p0

    .line 50
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x2710

    return p0
.end method

.method public isCurrentOrSystemUser()Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->getCallingUserId()I

    move-result v0

    .line 35
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;->getCurrentUser()I

    move-result p0

    if-eq v0, p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
