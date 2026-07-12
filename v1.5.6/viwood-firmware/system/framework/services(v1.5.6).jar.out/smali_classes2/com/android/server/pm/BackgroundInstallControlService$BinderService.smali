.class public final Lcom/android/server/pm/BackgroundInstallControlService$BinderService;
.super Landroid/content/pm/IBackgroundInstallControlService$Stub;
.source "BackgroundInstallControlService.java"


# instance fields
.field public final mService:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    return-void
.end method


# virtual methods
.method public getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundInstallControlService;->enforceCallerPermissions()V

    .line 184
    const-string v0, "debug.transparency.bg-install-apps"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/BackgroundInstallControlService;->getMockBackgroundInstalledPackages(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 186
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public registerBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-static {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->-$$Nest$fgetmCallbackHelper(Lcom/android/server/pm/BackgroundInstallControlService;)Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->registerBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public unregisterBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-static {p0}, Lcom/android/server/pm/BackgroundInstallControlService;->-$$Nest$fgetmCallbackHelper(Lcom/android/server/pm/BackgroundInstallControlService;)Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->unregisterBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V

    return-void
.end method
