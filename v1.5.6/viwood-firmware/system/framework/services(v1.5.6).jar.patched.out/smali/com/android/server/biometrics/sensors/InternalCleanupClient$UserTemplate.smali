.class public final Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;
.super Ljava/lang/Object;
.source "InternalCleanupClient.java"


# instance fields
.field public final mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 62
    iput p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mUserId:I

    return-void
.end method
