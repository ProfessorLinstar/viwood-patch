.class public final Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;
.super Ljava/lang/Object;
.source "AppSupportedLocalesChangedAtomRecord.java"


# instance fields
.field public final mCallingUid:I

.field public mNumLocales:I

.field public mOverrideRemoved:Z

.field public mSameAsPrevConfig:Z

.field public mSameAsResConfig:Z

.field public mStatus:I

.field public mTargetUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    .line 32
    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    .line 42
    iput v0, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 46
    iput p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mCallingUid:I

    return-void
.end method


# virtual methods
.method public setNumLocales(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    return-void
.end method

.method public setOverrideRemoved(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    return-void
.end method

.method public setSameAsPrevConfig(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    return-void
.end method

.method public setSameAsResConfig(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    return-void
.end method

.method public setTargetUid(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    return-void
.end method
