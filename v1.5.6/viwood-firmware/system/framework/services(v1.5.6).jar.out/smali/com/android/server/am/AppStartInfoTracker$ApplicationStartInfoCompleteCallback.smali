.class public final Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;
.super Ljava/lang/Object;
.source "AppStartInfoTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;)Landroid/app/IApplicationStartInfoCompleteListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/IApplicationStartInfoCompleteListener;I)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-object p2, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    .line 755
    iput p3, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mUid:I

    .line 757
    :try_start_0
    invoke-interface {p2}, Landroid/app/IApplicationStartInfoCompleteListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    iget p0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mUid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/AppStartInfoTracker;->removeStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;IZ)V

    return-void
.end method

.method public onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V
    .locals 0

    .line 765
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    invoke-interface {p0, p1}, Landroid/app/IApplicationStartInfoCompleteListener;->onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    invoke-interface {v0}, Landroid/app/IApplicationStartInfoCompleteListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
