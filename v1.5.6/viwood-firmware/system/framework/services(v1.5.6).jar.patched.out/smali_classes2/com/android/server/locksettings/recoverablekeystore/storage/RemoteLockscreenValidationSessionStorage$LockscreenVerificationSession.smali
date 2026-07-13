.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationSessionStorage.java"


# instance fields
.field public final mElapsedStartTime:J

.field public final mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;Ljava/security/KeyPair;J)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mKeyPair:Ljava/security/KeyPair;

    .line 119
    iput-wide p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mElapsedStartTime:J

    return-void
.end method


# virtual methods
.method public getKeyPair()Ljava/security/KeyPair;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mKeyPair:Ljava/security/KeyPair;

    return-object p0
.end method
