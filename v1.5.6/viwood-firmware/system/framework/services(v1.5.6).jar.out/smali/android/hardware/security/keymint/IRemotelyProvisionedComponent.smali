.class public interface abstract Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;
.super Ljava/lang/Object;
.source "IRemotelyProvisionedComponent.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 321
    const-string v2, "android$hardware$security$keymint$IRemotelyProvisionedComponent"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract generateCertificateRequest(Z[Landroid/hardware/security/keymint/MacedPublicKey;[B[BLandroid/hardware/security/keymint/DeviceInfo;Landroid/hardware/security/keymint/ProtectedData;)[B
.end method

.method public abstract generateCertificateRequestV2([Landroid/hardware/security/keymint/MacedPublicKey;[B)[B
.end method

.method public abstract getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;
.end method
