.class public final Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;
.super Ljava/lang/Object;
.source "TrustedPresentationListenerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstances:I

.field public mListenerBinder:Landroid/os/IBinder;

.field public final synthetic this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;


# direct methods
.method public static synthetic $r8$lambda$AgCHtHro5VOLyJdFaA21DDkT8-I(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->lambda$binderDied$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    .line 69
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public addInstance()V
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->this$0:Lcom/android/server/wm/TrustedPresentationListenerController;

    invoke-static {v0}, Lcom/android/server/wm/TrustedPresentationListenerController;->-$$Nest$fgetmHandler(Lcom/android/server/wm/TrustedPresentationListenerController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$binderDied$0()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v0, v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->this$1:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->-$$Nest$mremoveListeners(Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;Landroid/os/IBinder;Ljava/util/Optional;)V

    return-void
.end method

.method public removeInstance()Z
    .locals 3

    .line 80
    iget v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mInstances:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners$ListenerDeathRecipient;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return v1
.end method
