.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;
.super Ljava/lang/Object;
.source "RecoverySessionStorage.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field public final mKeyClaimant:[B

.field public final mLskfHash:[B

.field public final mSessionId:Ljava/lang/String;

.field public final mVaultParams:[B


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSessionId(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;[B[B[B)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    .line 151
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    .line 152
    iput-object p3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    .line 153
    iput-object p4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    .line 192
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->zeroize([B)V

    return-void
.end method

.method public getKeyClaimant()[B
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mKeyClaimant:[B

    return-object p0
.end method

.method public getLskfHash()[B
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mLskfHash:[B

    return-object p0
.end method

.method public getVaultParams()[B
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mVaultParams:[B

    return-object p0
.end method
