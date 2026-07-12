.class public final Lcom/android/server/pm/UserTypeDetails;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# instance fields
.field public final mAccessibilityString:I

.field public final mBadgeColors:[I

.field public final mBadgeLabels:[I

.field public final mBadgeNoBackground:I

.field public final mBadgePlain:I

.field public final mBaseType:I

.field public final mDarkThemeBadgeColors:[I

.field public final mDefaultCrossProfileIntentFilters:Ljava/util/List;

.field public final mDefaultRestrictions:Landroid/os/Bundle;

.field public final mDefaultSecureSettings:Landroid/os/Bundle;

.field public final mDefaultSystemSettings:Landroid/os/Bundle;

.field public final mDefaultUserInfoPropertyFlags:I

.field public final mDefaultUserProperties:Landroid/content/pm/UserProperties;

.field public final mEnabled:Z

.field public final mIconBadge:I

.field public final mLabels:[I

.field public final mMaxAllowed:I

.field public final mMaxAllowedPerParent:I

.field public final mName:Ljava/lang/String;

.field public final mProfileParentRequired:Z

.field public final mStatusBarIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    .line 192
    iput-boolean p2, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    .line 193
    iput p3, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    .line 194
    iput p7, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    .line 195
    iput p4, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 196
    iput p5, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    move-object/from16 p1, p16

    .line 197
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 p1, p17

    .line 198
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSystemSettings:Landroid/os/Bundle;

    move-object/from16 p1, p18

    .line 199
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 p1, p19

    .line 200
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 201
    iput-boolean p8, p0, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    .line 202
    iput p9, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    .line 203
    iput p10, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    .line 204
    iput p11, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    .line 205
    iput p12, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    .line 206
    iput-object p6, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    .line 207
    iput-object p13, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    .line 208
    iput-object p14, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    .line 209
    iput-object p15, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    move/from16 p1, p20

    .line 210
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails;->mAccessibilityString:I

    move-object/from16 p1, p21

    .line 211
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;Lcom/android/server/pm/UserTypeDetails-IA;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p21}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;)V

    return-void
.end method


# virtual methods
.method public addDefaultRestrictionsTo(Landroid/os/Bundle;)V
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMaxAllowed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMaxAllowedPerParent: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultUserInfoFlags: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/UserProperties;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "config_defaultFirstUserRestrictions: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 405
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 407
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 408
    invoke-static {v5}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    .line 409
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-static {p1, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 414
    :catch_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "none - resource not found"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDefaultRestrictions: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 421
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProfileParentRequired: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 422
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIconBadge: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBadgePlain: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 424
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBadgeNoBackground: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarIcon: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 426
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBadgeLabels.length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    const-string v1, "0(null)"

    if-eqz v0, :cond_3

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 428
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBadgeColors.length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v0, :cond_4

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 430
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDarkThemeBadgeColors.length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_5

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 432
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLabels.length: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    if-eqz p0, :cond_6

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getAccessibilityString()I
    .locals 0

    .line 347
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mAccessibilityString:I

    return p0
.end method

.method public getBadgeColor(I)I
    .locals 1

    .line 318
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBadgeLabel(I)I
    .locals 1

    .line 306
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBadgeNoBackground()I
    .locals 0

    .line 292
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    return p0
.end method

.method public getBadgePlain()I
    .locals 0

    .line 287
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    return p0
.end method

.method public getDarkThemeBadgeColor(I)I
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget p0, v0, p0

    return p0

    .line 332
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result p0

    return p0
.end method

.method public getDefaultCrossProfileIntentFilters()Ljava/util/List;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 386
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getDefaultRestrictions()Landroid/os/Bundle;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSecureSettings()Landroid/os/Bundle;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSystemSettings()Landroid/os/Bundle;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSystemSettings:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultUserInfoFlags()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-object p0
.end method

.method public getIconBadge()I
    .locals 0

    .line 282
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    return p0
.end method

.method public getLabel(I)I
    .locals 1

    .line 269
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    if-eqz p0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMaxAllowed()I
    .locals 0

    .line 234
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    return p0
.end method

.method public getMaxAllowedPerParent()I
    .locals 0

    .line 246
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarIcon()I
    .locals 0

    .line 297
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    return p0
.end method

.method public hasBadge()Z
    .locals 0

    .line 277
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 226
    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    return p0
.end method

.method public isFull()Z
    .locals 0

    .line 355
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isManagedProfile()Z
    .locals 0

    .line 680
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isProfile()Z
    .locals 0

    .line 351
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isProfileParentRequired()Z
    .locals 0

    .line 260
    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    return p0
.end method

.method public isSystem()Z
    .locals 0

    .line 359
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
