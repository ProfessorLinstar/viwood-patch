.class public Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;
.super Ljava/lang/Object;
.source "VpnIkev2Utils.java"

# interfaces
.implements Landroid/net/ipsec/ike/ChildSessionCallback;


# instance fields
.field public final mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

.field public final mTag:Ljava/lang/String;

.field public final mToken:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;I)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    .line 350
    iput-object p2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    .line 351
    iput p3, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosed for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onSessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method public onClosedExceptionally(Landroid/net/ipsec/ike/exceptions/IkeException;)V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildClosedExceptionally for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onSessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method public onIpSecTransformCreated(Landroid/net/IpSecTransform;I)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformCreated; Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onChildTransformCreated(ILandroid/net/IpSecTransform;I)V

    return-void
.end method

.method public onIpSecTransformDeleted(Landroid/net/IpSecTransform;I)V
    .locals 2

    .line 383
    iget-object p1, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildTransformDeleted; Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; for token "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onIpSecTransformsMigrated(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildTransformsMigrated; token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onChildMigrated(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public onOpened(Landroid/net/ipsec/ike/ChildSessionConfiguration;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChildOpened for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mCallback:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;

    iget p0, p0, Lcom/android/server/connectivity/VpnIkev2Utils$ChildSessionCallbackImpl;->mToken:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunnerCallback;->onChildOpened(ILandroid/net/ipsec/ike/ChildSessionConfiguration;)V

    return-void
.end method
