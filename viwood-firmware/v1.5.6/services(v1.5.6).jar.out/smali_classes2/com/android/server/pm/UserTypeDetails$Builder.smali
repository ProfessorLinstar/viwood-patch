.class public final Lcom/android/server/pm/UserTypeDetails$Builder;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# instance fields
.field public mAccessibilityString:I

.field public mBadgeColors:[I

.field public mBadgeLabels:[I

.field public mBadgeNoBackground:I

.field public mBadgePlain:I

.field public mBaseType:I

.field public mDarkThemeBadgeColors:[I

.field public mDefaultCrossProfileIntentFilters:Ljava/util/List;

.field public mDefaultRestrictions:Landroid/os/Bundle;

.field public mDefaultSecureSettings:Landroid/os/Bundle;

.field public mDefaultSystemSettings:Landroid/os/Bundle;

.field public mDefaultUserInfoPropertyFlags:I

.field public mDefaultUserProperties:Landroid/content/pm/UserProperties;

.field public mEnabled:I

.field public mIconBadge:I

.field public mLabels:[I

.field public mMaxAllowed:I

.field public mMaxAllowedPerParent:I

.field public mName:Ljava/lang/String;

.field public mProfileParentRequired:Z

.field public mStatusBarIcon:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 441
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 442
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    const/4 v0, 0x0

    .line 443
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    const/4 v1, 0x0

    .line 444
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 445
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    .line 446
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 447
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    const/4 v2, 0x1

    .line 449
    iput v2, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    .line 450
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    .line 451
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 452
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 453
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 454
    iput-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    .line 455
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 456
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 457
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 458
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    .line 459
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    .line 462
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-void
.end method


# virtual methods
.method public final checkSystemAndMainUserPreconditions()V
    .locals 6

    .line 664
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/lit16 v0, v0, 0x800

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserTypeDetails "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cannot be SYSTEM xor PRIMARY."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 669
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    if-ne v0, v2, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not sanction more than one MainUser."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;
    .locals 29

    move-object/from16 v0, p0

    .line 589
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "Cannot create a UserTypeDetails with no name."

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 591
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidBaseType()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserTypeDetails "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has invalid baseType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 593
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidPropertyFlags()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has invalid flags: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 595
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 593
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 596
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->checkSystemAndMainUserPreconditions()V

    .line 597
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasBadge()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has badge but no badgeLabels."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 600
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has badge but no badgeColors."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 603
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->isProfile()Z

    move-result v1

    if-nez v1, :cond_6

    .line 604
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 605
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v1, v3

    :goto_4
    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 604
    const-string v5, "UserTypeDetails %s has a non empty defaultCrossProfileIntentFilters"

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 608
    iget-boolean v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    xor-int/2addr v1, v3

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "UserTypeDetails %s requires a parent but isn\'t a profile"

    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :cond_6
    new-instance v6, Lcom/android/server/pm/UserTypeDetails;

    iget-object v7, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    if-eqz v1, :cond_7

    move v8, v3

    goto :goto_5

    :cond_7
    move v8, v2

    :goto_5
    iget v9, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iget v10, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iget v11, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iget-object v12, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    iget v13, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iget-boolean v14, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    iget v15, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    iget v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    iget v2, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    iget v3, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    move/from16 v16, v1

    .line 626
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    if-nez v1, :cond_8

    move-object/from16 v21, v5

    goto :goto_6

    :cond_8
    move-object/from16 v21, v1

    :goto_6
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    move-object/from16 v25, v1

    iget v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    .line 632
    invoke-virtual {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->getDefaultUserProperties()Landroid/content/pm/UserProperties;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v26, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v6 .. v28}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;Lcom/android/server/pm/UserTypeDetails-IA;)V

    return-object v6
.end method

.method public getBaseType()I
    .locals 0

    .line 585
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    return p0
.end method

.method public getDefaultUserProperties()Landroid/content/pm/UserProperties;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v0}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    .line 581
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-object p0
.end method

.method public final hasBadge()Z
    .locals 0

    .line 636
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasValidBaseType()Z
    .locals 1

    .line 645
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v0, 0x400

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x800

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc00

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hasValidPropertyFlags()Z
    .locals 0

    .line 659
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 p0, p0, 0x1c90

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isProfile()Z
    .locals 0

    .line 640
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAccessibilityString(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 563
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mAccessibilityString:I

    return-object p0
.end method

.method public varargs setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    return-object p0
.end method

.method public varargs setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    return-object p0
.end method

.method public setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 526
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    return-object p0
.end method

.method public setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 521
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    return-object p0
.end method

.method public setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 485
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    return-object p0
.end method

.method public varargs setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    return-object p0
.end method

.method public setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 541
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 490
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    return-object p0
.end method

.method public setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 573
    invoke-virtual {p1}, Landroid/content/pm/UserProperties$Builder;->build()Landroid/content/pm/UserProperties;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-object p0
.end method

.method public setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 470
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    return-object p0
.end method

.method public setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 516
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    return-object p0
.end method

.method public varargs setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabels:[I

    return-object p0
.end method

.method public setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 475
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    return-object p0
.end method

.method public setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 480
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 511
    iput-boolean p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mProfileParentRequired:Z

    return-object p0
.end method

.method public setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 0

    .line 531
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mStatusBarIcon:I

    return-object p0
.end method
