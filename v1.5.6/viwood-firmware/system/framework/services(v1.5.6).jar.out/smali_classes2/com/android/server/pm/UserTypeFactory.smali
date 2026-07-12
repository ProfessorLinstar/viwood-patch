.class public abstract Lcom/android/server/pm/UserTypeFactory;
.super Ljava/lang/Object;
.source "UserTypeFactory.java"


# direct methods
.method public static customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")V"
        }
    .end annotation

    .line 528
    const-string v0, "UserTypeFactory"

    :try_start_0
    const-string/jumbo v1, "user-types"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 529
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 530
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    .line 533
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 534
    const-string/jumbo v3, "profile-type"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, " in "

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    .line 536
    :cond_0
    :try_start_1
    const-string v3, "full-type"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v1, 0x0

    .line 549
    :goto_1
    const-string/jumbo v3, "name"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 550
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_5

    .line 556
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 559
    const-string v5, "android."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x1000

    if-eqz v5, :cond_5

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Customizing user type "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserTypeDetails$Builder;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_2

    .line 568
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v5

    if-eq v5, v6, :cond_6

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    .line 569
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v5

    const/16 v6, 0x400

    if-ne v5, v6, :cond_3

    goto :goto_3

    .line 571
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong base type to customize user type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), which is type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result v1

    invoke-static {v1}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 564
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal custom user type name "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Non-AOSP user types cannot start with \'android.\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz v1, :cond_d

    .line 577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating custom user type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v5, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v5}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    .line 579
    invoke-virtual {v5, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 580
    invoke-virtual {v5, v6}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 582
    invoke-virtual {v5, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    .line 583
    invoke-virtual {p0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v5

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 591
    const-string/jumbo v3, "max-allowed-per-parent"

    .line 592
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    .line 591
    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 593
    const-string v3, "icon-badge"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 594
    const-string v3, "badge-plain"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 595
    const-string v3, "badge-no-background"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda3;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 596
    const-string/jumbo v3, "status-bar-icon"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda4;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 599
    :cond_7
    const-string v3, "enabled"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda5;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 600
    const-string/jumbo v3, "max-allowed"

    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda6;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v3, v5}, Lcom/android/server/pm/UserTypeFactory;->setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 603
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 604
    :goto_4
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 605
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 606
    const-string v6, "default-restrictions"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 608
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/Bundle;

    move-result-object v5

    .line 609
    invoke-virtual {v2, v5}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_9

    .line 610
    const-string v6, "badge-labels"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 611
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda7;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_9
    if-eqz v1, :cond_a

    .line 612
    const-string v6, "badge-colors"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 613
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    .line 614
    const-string v6, "badge-colors-dark"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 615
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda9;

    invoke-direct {v5, v2}, Lcom/android/server/pm/UserTypeFactory$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/UserTypeDetails$Builder;)V

    invoke-static {p1, v5}, Lcom/android/server/pm/UserTypeFactory;->setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V

    goto :goto_4

    .line 616
    :cond_b
    const-string/jumbo v6, "user-properties"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 617
    invoke-virtual {v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->getDefaultUserProperties()Landroid/content/pm/UserProperties;

    move-result-object v5

    .line 618
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/UserProperties;->updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4

    .line 620
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 585
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creation of non-profile user type ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is not currently supported."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 551
    :cond_e
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping user type with no name in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 538
    :cond_f
    const-string v2, "change-user-type"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 540
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 543
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unknown element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 531
    :cond_11
    :goto_6
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 626
    :goto_7
    const-string p1, "Cannot read user type configuration file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    return-void
.end method

.method public static getDefaultBuilders()Landroid/util/ArrayMap;
    .locals 3

    .line 103
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 105
    const-string v1, "android.os.usertype.profile.MANAGED"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileManaged()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "android.os.usertype.full.SYSTEM"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullSystem()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "android.os.usertype.full.SECONDARY"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullSecondary()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "android.os.usertype.full.GUEST"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullGuest()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "android.os.usertype.full.DEMO"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullDemo()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "android.os.usertype.full.RESTRICTED"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeFullRestricted()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "android.os.usertype.system.HEADLESS"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeSystemHeadless()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "android.os.usertype.profile.CLONE"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileClone()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "android.os.usertype.profile.COMMUNAL"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileCommunal()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "android.os.usertype.profile.PRIVATE"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfilePrivate()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "android.os.usertype.profile.SUPERVISING"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileSupervising()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "android.os.usertype.profile.TEST"

    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultTypeProfileTest()Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getDefaultCloneCrossProfileIntentFilter()Ljava/util/List;
    .locals 1

    .line 499
    invoke-static {}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultCloneProfileFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultGuestUserRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 457
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 458
    const-string/jumbo v1, "no_config_wifi"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 459
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    const-string/jumbo v1, "no_config_credentials"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultManagedCrossProfileIntentFilter()Ljava/util/List;
    .locals 1

    .line 495
    invoke-static {}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultManagedProfileFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultManagedProfileSecureSettings()Landroid/os/Bundle;
    .locals 3

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 486
    const-string v1, "managed_profile_contact_remote_search"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v1, "cross_profile_calendar_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;
    .locals 3

    .line 509
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 512
    const-string/jumbo v1, "user_setup_complete"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultPrivateCrossProfileIntentFilter()Ljava/util/List;
    .locals 1

    .line 504
    invoke-static {}, Lcom/android/server/pm/DefaultCrossProfileIntentFiltersUtils;->getDefaultPrivateProfileFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPrivateProfileRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 472
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 473
    const-string/jumbo v1, "no_bluetooth_sharing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultProfileRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 466
    const-string/jumbo v1, "no_wallpaper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    const-string/jumbo v1, "no_outgoing_calls"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    const-string/jumbo v1, "no_sms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultSupervisingProfileRestrictions()Landroid/os/Bundle;
    .locals 3

    .line 478
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 479
    const-string/jumbo v1, "no_install_apps"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getDefaultTypeFullDemo()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 2

    .line 402
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.DEMO"

    .line 403
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 404
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x200

    .line 405
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 406
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 407
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullGuest()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 3

    .line 386
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101ba

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x4

    .line 390
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v2, "android.os.usertype.full.GUEST"

    .line 391
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/16 v2, 0x400

    .line 392
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 393
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 394
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 395
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultGuestUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullRestricted()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 2

    .line 415
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.RESTRICTED"

    .line 416
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 417
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x8

    .line 418
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 419
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 420
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 422
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullSecondary()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 2

    .line 375
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.SECONDARY"

    .line 376
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x400

    .line 377
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 378
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 379
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSecondaryUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeFullSystem()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 2

    .line 429
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.full.SYSTEM"

    .line 430
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0xc00

    .line 431
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x4003

    .line 432
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 433
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileClone()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 5

    .line 129
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.CLONE"

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10408f1

    filled-new-array {v2}, [I

    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10803f9

    .line 135
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10803f8

    .line 136
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x10401f2

    filled-new-array {v3}, [I

    move-result-object v3

    .line 140
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1060034

    filled-new-array {v3}, [I

    move-result-object v3

    .line 142
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1060035

    filled-new-array {v3}, [I

    move-result-object v3

    .line 144
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x10400f6

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setAccessibilityString(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultCloneCrossProfileIntentFilter()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 150
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v3}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 152
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 153
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setUseParentsContacts(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 157
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    const/16 v4, 0xa

    .line 158
    invoke-virtual {v3, v4}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 160
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentResolutionStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 162
    invoke-virtual {v3, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 164
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 168
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setDeleteAppWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileCommunal()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 6

    .line 263
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.COMMUNAL"

    .line 264
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 265
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 268
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x10408f2

    filled-new-array {v3}, [I

    move-result-object v3

    .line 269
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1080606

    .line 270
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1080604

    .line 271
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v4, 0x1080605

    .line 272
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x10405e4

    const v4, 0x10405e5

    const v5, 0x10405e3

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    .line 274
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1060333

    const v4, 0x1060335

    const v5, 0x1060331

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    .line 278
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x1060334

    const v4, 0x1060336

    const v5, 0x1060332

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    .line 282
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 286
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 287
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v3}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 289
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 290
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 291
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 293
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileManaged()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 5

    .line 178
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.MANAGED"

    .line 179
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 181
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10408f7

    const v3, 0x10408f8

    const v4, 0x10408f6

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 184
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1080412

    .line 188
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x108040d

    .line 189
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x108040f

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10809ec

    .line 191
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10405e4

    const v3, 0x10405e5

    const v4, 0x10405e3

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 192
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1060333

    const v3, 0x1060335

    const v4, 0x1060331

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 196
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x1060334

    const v3, 0x1060336

    const v4, 0x1060332

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 200
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10400f8

    .line 204
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setAccessibilityString(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 208
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultManagedCrossProfileIntentFilter()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v2, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v2}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 210
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 212
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 213
    invoke-virtual {v2, v3}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 217
    invoke-virtual {v2, v3}, Landroid/content/pm/UserProperties$Builder;->setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 218
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfilePrivate()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 4

    .line 301
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.PRIVATE"

    .line 302
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 303
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 306
    invoke-static {}, Landroid/os/UserManager;->isPrivateProfileEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10408f3

    filled-new-array {v2}, [I

    move-result-object v2

    .line 307
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10805c6

    .line 308
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10805c5

    .line 309
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10809ed

    .line 313
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10408e8

    filled-new-array {v2}, [I

    move-result-object v2

    .line 314
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x106000c

    filled-new-array {v2}, [I

    move-result-object v2

    .line 316
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x106000b

    filled-new-array {v2}, [I

    move-result-object v2

    .line 318
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v2, 0x10400f9

    .line 320
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setAccessibilityString(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 322
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultPrivateProfileRestrictions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 323
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultPrivateCrossProfileIntentFilter()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v2, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v2}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 325
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 326
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 327
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setAuthAlwaysRequiredToDisableQuietMode(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 328
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setAllowStoppingUserWithDelayedLocking(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 329
    invoke-virtual {v2, v3}, Landroid/content/pm/UserProperties$Builder;->setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 330
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 331
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 332
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 334
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInSharingSurfaces(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    const/16 v3, 0xa

    .line 336
    invoke-virtual {v2, v3}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 338
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 339
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setCrossProfileContentSharingStrategy(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 341
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setProfileApiVisibility(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 343
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setItemsRestrictedOnHomeScreen(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 344
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileSupervising()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 5

    .line 352
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.profile.SUPERVISING"

    .line 353
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x1000

    .line 354
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 356
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const v3, 0x10408f4

    filled-new-array {v3}, [I

    move-result-object v3

    .line 358
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 359
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultSupervisingProfileRestrictions()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 360
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    new-instance v3, Landroid/content/pm/UserProperties$Builder;

    invoke-direct {v3}, Landroid/content/pm/UserProperties$Builder;-><init>()V

    .line 362
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 363
    invoke-virtual {v3, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 364
    invoke-virtual {v3, v4}, Landroid/content/pm/UserProperties$Builder;->setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 365
    invoke-virtual {v3, v1}, Landroid/content/pm/UserProperties$Builder;->setShowInQuietMode(I)Landroid/content/pm/UserProperties$Builder;

    move-result-object v3

    .line 366
    invoke-virtual {v3, v2}, Landroid/content/pm/UserProperties$Builder;->setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v2

    .line 367
    invoke-virtual {v2, v1}, Landroid/content/pm/UserProperties$Builder;->setAlwaysVisible(Z)Landroid/content/pm/UserProperties$Builder;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserProperties(Landroid/content/pm/UserProperties$Builder;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeProfileTest()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 5

    .line 226
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultProfileRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 227
    const-string/jumbo v1, "no_fun"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 229
    new-instance v1, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v1}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v3, "android.os.usertype.profile.TEST"

    .line 230
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/16 v3, 0x1000

    .line 231
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const/4 v3, 0x2

    .line 232
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setProfileParentRequired(Z)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x10408f5

    filled-new-array {v2, v2, v2}, [I

    move-result-object v2

    .line 234
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x1080606

    .line 238
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x1080604

    .line 239
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v3, 0x1080605

    .line 240
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 241
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setStatusBarIcon(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x10405e4

    const v3, 0x10405e5

    const v4, 0x10405e3

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 242
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x1060333

    const v3, 0x1060335

    const v4, 0x1060331

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 246
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    const v2, 0x1060334

    const v3, 0x1060336

    const v4, 0x1060332

    filled-new-array {v4, v2, v3}, [I

    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultNonManagedProfileSecureSettings()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultTypeSystemHeadless()Lcom/android/server/pm/UserTypeDetails$Builder;
    .locals 2

    .line 441
    new-instance v0, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-direct {v0}, Lcom/android/server/pm/UserTypeDetails$Builder;-><init>()V

    const-string v1, "android.os.usertype.system.HEADLESS"

    .line 442
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/16 v1, 0x800

    .line 443
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 444
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 445
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserTypeDetails$Builder;->setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTypeUpgrades()Ljava/util/List;
    .locals 2

    .line 749
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 750
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/pm/UserTypeFactory;->parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 751
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 748
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static getUserTypeVersion()I
    .locals 2

    .line 714
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1170006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 715
    :try_start_0
    invoke-static {v0}, Lcom/android/server/pm/UserTypeFactory;->getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 716
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 713
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static getUserTypeVersion(Landroid/content/res/XmlResourceParser;)I
    .locals 5

    .line 721
    const-string v0, "UserTypeFactory"

    .line 724
    :try_start_0
    const-string/jumbo v1, "user-types"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 725
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 728
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v2

    .line 730
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse value of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' for version in "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 730
    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    throw v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 736
    :goto_0
    const-string v1, "Cannot read user type configuration file."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getUserTypes()Landroid/util/ArrayMap;
    .locals 5

    .line 88
    invoke-static {}, Lcom/android/server/pm/UserTypeFactory;->getDefaultBuilders()Landroid/util/ArrayMap;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 92
    :try_start_0
    invoke-static {v0, v1}, Lcom/android/server/pm/UserTypeFactory;->customizeBuilders(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 95
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    .line 96
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 97
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserTypeDetails$Builder;

    invoke-virtual {v4}, Lcom/android/server/pm/UserTypeDetails$Builder;->createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 90
    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
.end method

.method public static parseUserUpgrades(Landroid/util/ArrayMap;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/UserTypeDetails$Builder;",
            ">;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;",
            ">;"
        }
    .end annotation

    .line 758
    const-string v0, "UserTypeFactory"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 761
    :try_start_0
    const-string/jumbo v2, "user-types"

    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 762
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 763
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 765
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 766
    const-string v3, "change-user-type"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 767
    const-string v2, "from"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 768
    const-string/jumbo v4, "to"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 771
    invoke-static {v2, p0}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 772
    invoke-static {v4, p0}, Lcom/android/server/pm/UserTypeFactory;->validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :try_start_1
    const-string/jumbo v5, "whenVersionLeq"

    .line 777
    invoke-interface {p1, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 776
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 784
    :try_start_2
    new-instance v5, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;

    invoke-direct {v5, v2, v4, v3}, Lcom/android/server/pm/UserTypeFactory$UserTypeUpgrade;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 786
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse value of whenVersionLeq in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 779
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    throw p0

    .line 789
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 764
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 794
    :goto_2
    const-string p1, "Cannot read user type configuration file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method public static setIntAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 3

    const/4 v0, 0x0

    .line 641
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse value of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 648
    const-string p1, "UserTypeFactory"

    invoke-static {p1, p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    throw p2
.end method

.method public static setResAttribute(Landroid/content/res/XmlResourceParser;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x0

    .line 664
    invoke-interface {p0, v0, p1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 668
    invoke-interface {p0, v0, p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 669
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static setResAttributeArray(Landroid/content/res/XmlResourceParser;Ljava/util/function/Consumer;)V
    .locals 5

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 686
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 687
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 688
    const-string v3, "item"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping unknown child element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    const-string v3, "UserTypeFactory"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 694
    const-string/jumbo v3, "res"

    const/4 v4, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 698
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    .line 702
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 703
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 705
    :cond_3
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static validateUserTypeIsProfile(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 2

    .line 802
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserTypeDetails$Builder;

    if-eqz p1, :cond_1

    .line 803
    invoke-virtual {p1}, Lcom/android/server/pm/UserTypeDetails$Builder;->getBaseType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal upgrade of user type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : Can only upgrade profiles user types"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
