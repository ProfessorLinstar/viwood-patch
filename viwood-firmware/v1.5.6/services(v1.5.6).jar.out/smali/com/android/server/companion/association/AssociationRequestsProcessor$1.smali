.class public Lcom/android/server/companion/association/AssociationRequestsProcessor$1;
.super Landroid/os/ResultReceiver;
.source "AssociationRequestsProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/os/Handler;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;->this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 472
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown result code:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_AssociationRequestsProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 476
    :cond_0
    const-string p1, "association_request"

    const-class v0, Landroid/companion/AssociationRequest;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/AssociationRequest;

    .line 478
    const-string v0, "application_callback"

    .line 479
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/IAssociationRequestCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IAssociationRequestCallback;

    move-result-object v0

    .line 480
    const-string/jumbo v1, "result_receiver"

    const-class v2, Landroid/os/ResultReceiver;

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 491
    :cond_1
    const-string/jumbo v2, "mac_address"

    const-class v3, Landroid/net/MacAddress;

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/MacAddress;

    .line 493
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor$1;->this$0:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->-$$Nest$mprocessAssociationRequestApproval(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V

    return-void
.end method
