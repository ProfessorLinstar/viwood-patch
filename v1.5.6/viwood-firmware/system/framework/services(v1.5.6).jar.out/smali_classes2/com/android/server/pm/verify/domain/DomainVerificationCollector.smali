.class public Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
.super Ljava/lang/Object;
.source "DomainVerificationCollector.java"


# static fields
.field public static final ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

.field public static final DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;


# instance fields
.field public final mDomainMatcher:Ljava/util/regex/Matcher;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method public static synthetic $r8$lambda$batCCh6Ga6j4xiWi4NlYNy9upmc(Landroid/util/ArraySet;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d-9e3d0EUMBHIP8n7OmBcLw9esQ(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 120
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 121
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l_-JJzVBim96J2VNXwL1vO01Oog(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 131
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 132
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\*\\.)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 46
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    .line 50
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 68
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 71
    sget-object p1, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public final byteSizeOf(Ljava/lang/String;)I
    .locals 0

    .line 300
    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public collectAllWebDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;
    .locals 6

    .line 141
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 142
    sget-object v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-object v4
.end method

.method public final collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0xa74866d

    .line 151
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/pkg/AndroidPackage;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 157
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsLegacy(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 243
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v2

    .line 244
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v3, :cond_7

    if-eqz v7, :cond_7

    .line 247
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 248
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 249
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    if-eqz v7, :cond_6

    .line 251
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 252
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v12}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_6

    .line 257
    :cond_0
    const-string v13, "android.intent.category.DEFAULT"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 258
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_6

    .line 276
    :cond_1
    invoke-virtual {v12}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_5

    if-eqz v7, :cond_5

    .line 278
    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 279
    invoke-virtual {v0, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->isValidHost(Ljava/lang/String;)Z

    move-result v4

    move/from16 v5, p3

    if-ne v4, v5, :cond_4

    .line 280
    invoke-virtual {v0, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->byteSizeOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v8, v4

    const/high16 v4, 0x100000

    if-ge v8, v4, :cond_2

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v4, p4

    move-object/from16 v7, p5

    goto :goto_4

    :cond_2
    const/16 v16, 0x0

    goto :goto_3

    .line 282
    :goto_4
    invoke-interface {v7, v4, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    return-object v15

    :cond_3
    move/from16 v7, v16

    goto :goto_5

    :cond_4
    move-object/from16 v4, p4

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    :goto_6
    move/from16 v5, p3

    move-object/from16 v4, p4

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    move/from16 v5, p3

    move-object/from16 v4, p4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public final collectDomainsLegacy(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 17

    if-nez p2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v0, p0

    .line 175
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 180
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_3

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_2

    if-nez v3, :cond_2

    .line 184
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 185
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v7

    .line 186
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_1

    if-nez v3, :cond_1

    .line 189
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 190
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/IntentFilter;->needsVerification()Z

    move-result v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-object v4

    :cond_3
    move v6, v5

    move v8, v6

    const/4 v7, 0x1

    :goto_2
    if-ge v6, v2, :cond_9

    if-eqz v7, :cond_9

    .line 203
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 204
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 205
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v5

    :goto_3
    if-ge v11, v10, :cond_8

    if-eqz v7, :cond_8

    .line 207
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 208
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    .line 209
    invoke-virtual {v12, v5}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 210
    invoke-virtual {v12}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    move v14, v5

    :goto_4
    if-ge v14, v13, :cond_7

    .line 212
    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 213
    invoke-virtual {v0, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->isValidHost(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 p2, v4

    move/from16 v4, p3

    if-ne v3, v4, :cond_6

    .line 214
    invoke-virtual {v0, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->byteSizeOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v8, v3

    const/high16 v3, 0x100000

    if-ge v8, v3, :cond_4

    const/16 v16, 0x1

    :goto_5
    move-object/from16 v3, p4

    move-object/from16 v7, p5

    goto :goto_6

    :cond_4
    move/from16 v16, v5

    goto :goto_5

    .line 216
    :goto_6
    invoke-interface {v7, v3, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_5

    return-object v15

    :cond_5
    move/from16 v7, v16

    goto :goto_7

    :cond_6
    move-object/from16 v3, p4

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p2

    goto :goto_4

    :cond_7
    move-object/from16 v3, p4

    move-object/from16 p2, v4

    move/from16 v4, p3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p2

    goto :goto_3

    :cond_8
    move-object/from16 v3, p4

    move-object/from16 p2, v4

    move/from16 v4, p3

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p2

    goto :goto_2

    :cond_9
    move-object/from16 p2, v4

    return-object p2
.end method

.method public collectInvalidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public collectValidAutoVerifyDomains(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .locals 1

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public containsAutoVerifyDomain(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 6

    .line 129
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda2;

    invoke-direct {v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public containsWebDomain(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 6

    .line 118
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidHost(Ljava/lang/String;)Z
    .locals 1

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 315
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
