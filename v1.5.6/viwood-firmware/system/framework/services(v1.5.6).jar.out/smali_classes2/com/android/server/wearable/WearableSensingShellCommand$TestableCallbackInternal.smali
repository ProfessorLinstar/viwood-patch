.class public Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;
.super Ljava/lang/Object;
.source "WearableSensingShellCommand.java"


# instance fields
.field public mLastStatus:I


# direct methods
.method public static synthetic $r8$lambda$Z8wERZw8FiWkZXCijwngc10bZ34(Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;->lambda$createRemoteStatusCallback$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateRemoteStatusCallback(Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;)Landroid/os/RemoteCallback;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;->createRemoteStatusCallback()Landroid/os/RemoteCallback;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRemoteStatusCallback()Landroid/os/RemoteCallback;
    .locals 2

    .line 59
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    return-object v0
.end method

.method public getLastStatus()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;->mLastStatus:I

    return p0
.end method

.method public final synthetic lambda$createRemoteStatusCallback$0(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    const-string v0, "android.app.wearable.WearableSensingStatusBundleKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 63
    :try_start_0
    iput p1, p0, Lcom/android/server/wearable/WearableSensingShellCommand$TestableCallbackInternal;->mLastStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    throw p0
.end method
