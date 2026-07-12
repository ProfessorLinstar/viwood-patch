.class public abstract Lcom/android/server/pm/verify/domain/DomainVerificationUtils;
.super Ljava/lang/Object;
.source "DomainVerificationUtils.java"


# static fields
.field public static final sCachedMatcher:Ljava/lang/ThreadLocal;


# direct methods
.method public static synthetic $r8$lambda$INVzaUi9srP2OAr1xKQiXsvKY3Y()Ljava/util/regex/Matcher;
    .locals 2

    .line 42
    sget-object v0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static buildMockAppInfo(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 109
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 110
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 111
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return-object v0
.end method

.method public static isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/pkg/AndroidPackage;J)Z
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->buildMockAppInfo(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static isDomainVerificationIntent(Landroid/content/Intent;J)Z
    .locals 8

    .line 56
    invoke-virtual {p0}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 65
    :cond_1
    sget-object v2, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Matcher;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    return v1

    :cond_3
    const/4 v3, 0x1

    .line 74
    const-string v4, "android.intent.category.BROWSABLE"

    const-string v5, "android.intent.category.DEFAULT"

    if-ne v0, v2, :cond_5

    .line 76
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v1

    :cond_5
    const-wide/32 v6, 0x10000

    and-long/2addr p1, v6

    const-wide/16 v6, 0x0

    cmp-long p1, p1, v6

    if-eqz p1, :cond_6

    move v1, v3

    :cond_6
    if-nez v0, :cond_7

    goto :goto_0

    .line 86
    :cond_7
    invoke-virtual {p0, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_0
    return v1

    .line 91
    :cond_8
    invoke-virtual {p0, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isValidDomain(Ljava/lang/String;)Z
    .locals 8

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfe

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 119
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    const/16 v3, 0x2e

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    .line 120
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x2

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/4 v0, -0x1

    move v1, v2

    move v5, v4

    .line 127
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3f

    if-ge v1, v6, :cond_7

    .line 128
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_5

    sub-int v0, v1, v0

    sub-int/2addr v0, v4

    if-eqz v0, :cond_4

    if-le v0, v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    return v2

    .line 136
    :cond_5
    invoke-static {v6}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isValidDomainChar(C)Z

    move-result v6

    if-nez v6, :cond_6

    return v2

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    sub-int/2addr p0, v4

    if-eqz p0, :cond_9

    if-le p0, v7, :cond_8

    goto :goto_3

    :cond_8
    if-le v5, v4, :cond_9

    return v4

    :cond_9
    :goto_3
    return v2
.end method

.method public static isValidDomainChar(C)Z
    .locals 1

    .line 0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static throwPackageUnavailable(Ljava/lang/String;)Landroid/content/pm/PackageManager$NameNotFoundException;
    .locals 3

    .line 51
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " unavailable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
