.class public final Lcom/android/server/locales/AppLocaleChangedAtomRecord;
.super Ljava/lang/Object;
.source "AppLocaleChangedAtomRecord.java"


# instance fields
.field public mCaller:I

.field public final mCallingUid:I

.field public mNewLocales:Ljava/lang/String;

.field public mPrevLocales:Ljava/lang/String;

.field public mStatus:I

.field public mTargetUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    .line 32
    const-string v0, "default-"

    iput-object v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 36
    iput v1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    .line 39
    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final convertEmptyLocales(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 69
    const-string p0, ""

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 70
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "default-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public setCaller(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    return-void
.end method

.method public setNewLocales(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->convertEmptyLocales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    return-void
.end method

.method public setPrevLocales(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->convertEmptyLocales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    return-void
.end method

.method public setTargetUid(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    return-void
.end method
