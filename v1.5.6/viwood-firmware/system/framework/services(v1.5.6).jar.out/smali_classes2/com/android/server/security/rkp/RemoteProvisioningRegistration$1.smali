.class public Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;
.super Ljava/lang/Object;
.source "RemoteProvisioningRegistration.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

.field public final synthetic val$callback:Landroid/security/rkp/IStoreUpgradedKeyCallback;


# direct methods
.method public static synthetic $r8$lambda$4yaVkdqF2eFFug9OQ2SVWZqTBaM(Landroid/security/rkp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V
    .locals 0

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IStoreUpgradedKeyCallback;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Landroid/security/rkp/IStoreUpgradedKeyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    invoke-static {v0}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->-$$Nest$fgetmStoreUpgradedKeyOperations(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Landroid/security/rkp/IStoreUpgradedKeyCallback;

    invoke-interface {v1}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Landroid/security/rkp/IStoreUpgradedKeyCallback;

    new-instance v1, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1$$ExternalSyntheticLambda0;-><init>(Landroid/security/rkp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->-$$Nest$mwrapCallback(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Lcom/android/server/security/rkp/RemoteProvisioningRegistration$CallbackRunner;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 159
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 162
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    invoke-static {p1}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->-$$Nest$fgetmStoreUpgradedKeyOperations(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Landroid/security/rkp/IStoreUpgradedKeyCallback;

    invoke-interface {v0}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Landroid/security/rkp/IStoreUpgradedKeyCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1$$ExternalSyntheticLambda1;-><init>(Landroid/security/rkp/IStoreUpgradedKeyCallback;)V

    invoke-static {p1, v0}, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->-$$Nest$mwrapCallback(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Lcom/android/server/security/rkp/RemoteProvisioningRegistration$CallbackRunner;)V

    return-void
.end method
