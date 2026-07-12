.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public mPackages:Landroid/util/ArrayMap;


# direct methods
.method public static bridge synthetic -$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearPackage(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->clearPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->filter(JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->offsetHistory(J)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V
    .locals 0

    .line 846
    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object p0

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, p6

    move-wide p6, p7

    move-wide p8, p9

    move p10, p11

    move p11, p12

    invoke-virtual/range {p0 .. p11}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->addDiscreteAccess(ILjava/lang/String;Ljava/lang/String;IIJJII)V

    return-void
.end method

.method public final applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/ArrayMap;)V
    .locals 4

    .line 862
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 864
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, p1, p2, v3, p3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->-$$Nest$mapplyToHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/ArrayMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clearPackage(Ljava/lang/String;)V
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V
    .locals 3

    .line 892
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 893
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    const-string/jumbo v1, "p"

    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 895
    const-string/jumbo v2, "pn"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-virtual {p0, v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->deserialize(Lcom/android/modules/utils/TypedXmlPullParser;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 9

    .line 881
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 883
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    const-string v2, "Package: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 885
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 887
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final filter(JJILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILandroid/util/ArrayMap;)V
    .locals 14

    move-object/from16 v0, p6

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    .line 816
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 817
    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iput-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 822
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 823
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    move-wide v3, p1

    move-wide/from16 v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v13, p11

    .line 822
    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;JJI[Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V

    .line 825
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    invoke-virtual {v1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    invoke-direct {v0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;-><init>()V

    .line 855
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    .line 798
    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;)V
    .locals 4

    .line 802
    iget-object v0, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 804
    iget-object v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 805
    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    .line 806
    invoke-virtual {p0, v2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->getOrCreateDiscretePackageOps(Ljava/lang/String;)Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->merge(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final offsetHistory(J)V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 834
    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public serialize(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 6

    .line 870
    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x0

    .line 872
    const-string/jumbo v3, "p"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "pn"

    invoke-interface {p1, v2, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 874
    iget-object v4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;

    invoke-virtual {v4, p1}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscretePackageOps;->serialize(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 875
    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
