.class public Lcom/android/server/pm/PackageVerificationState;
.super Ljava/lang/Object;
.source "PackageVerificationState.java"


# instance fields
.field public final mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

.field public mRequiredVerificationComplete:Z

.field public mRequiredVerificationPassed:Z

.field public final mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

.field public mSufficientVerificationComplete:Z

.field public mSufficientVerificationPassed:Z

.field public final mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

.field public final mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

.field public final mVerifyingSession:Lcom/android/server/pm/VerifyingSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerifyingSession;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    .line 52
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    .line 53
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 54
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    .line 55
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    return-void
.end method


# virtual methods
.method public addRequiredVerifierUid(I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 67
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public addSufficientVerifier(I)V
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public areAllVerificationsComplete()Z
    .locals 0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result p0

    return p0
.end method

.method public checkRequiredVerifierUid(I)Z
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public checkSufficientVerifierUid(I)Z
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public extendTimeout(I)Z
    .locals 1

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageVerificationState;->checkRequiredVerifierUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVerifyingSession()Lcom/android/server/pm/VerifyingSession;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mVerifyingSession:Lcom/android/server/pm/VerifyingSession;

    return-object p0
.end method

.method public isInstallAllowed()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    if-eqz v0, :cond_1

    .line 190
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVerificationComplete()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 175
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    return p0
.end method

.method public passRequiredVerification()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    return-void

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Required verifiers still present."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVerifierResponse(II)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    .line 122
    iput-boolean p2, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationPassed:Z

    .line 124
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 125
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 126
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 130
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 132
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 133
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 134
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mRequiredVerificationComplete:Z

    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p2, v1, :cond_3

    .line 138
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationPassed:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    .line 142
    :cond_3
    iget-object p2, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 143
    iget-object p1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 144
    iput-boolean v1, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerificationComplete:Z

    :cond_4
    return-void
.end method

.method public setVerifierResponseOnTimeout(II)V
    .locals 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageVerificationState;->checkRequiredVerifierUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mSufficientVerifierUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 98
    iget-object v0, p0, Lcom/android/server/pm/PackageVerificationState;->mUnrespondedRequiredVerifierUids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public timeoutExtended(I)Z
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/android/server/pm/PackageVerificationState;->mExtendedTimeoutUids:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method
