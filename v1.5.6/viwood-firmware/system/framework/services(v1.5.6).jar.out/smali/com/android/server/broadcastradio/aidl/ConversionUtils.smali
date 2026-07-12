.class public abstract Lcom/android/server/broadcastradio/aidl/ConversionUtils;
.super Ljava/lang/Object;
.source "ConversionUtils.java"


# direct methods
.method public static synthetic $r8$lambda$5BNW2R6Mrq7TNyIBTYq_zExTvbc(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 0

    .line 424
    new-array p0, p0, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    return-object p0
.end method

.method public static synthetic $r8$lambda$GjniY_a6MHpBUMB3Bwajra05_ZU(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 0

    .line 297
    new-array p0, p0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object p0
.end method

.method public static synthetic $r8$lambda$KZ7tTfXftYW6kEdF33oqtGf2JWE(I)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 0

    .line 173
    new-array p0, p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object p0
.end method

.method public static synthetic $r8$lambda$ddUIRVUf_qDHtPrR8GOfi-N3Vb4(I)[Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 0

    .line 749
    new-array p0, p0, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    return-object p0
.end method

.method public static alertAreaFromHalAlertArea(Landroid/hardware/broadcastradio/AlertArea;)Landroid/hardware/radio/RadioAlert$AlertArea;
    .locals 5

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 606
    :goto_0
    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertArea;->polygons:[Landroid/hardware/broadcastradio/Polygon;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 607
    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->polygonFromHalPolygon(Landroid/hardware/broadcastradio/Polygon;)Landroid/hardware/radio/RadioAlert$Polygon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 609
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    :goto_1
    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertArea;->geocodes:[Landroid/hardware/broadcastradio/Geocode;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 614
    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->geocodeFromHalGeocode(Landroid/hardware/broadcastradio/Geocode;)Landroid/hardware/radio/RadioAlert$Geocode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 616
    :cond_2
    new-instance p0, Landroid/hardware/radio/RadioAlert$AlertArea;

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/RadioAlert$AlertArea;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static alertInfoFromHalAlertInfo(Landroid/hardware/broadcastradio/AlertInfo;)Landroid/hardware/radio/RadioAlert$AlertInfo;
    .locals 9

    .line 621
    iget-object v0, p0, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    array-length v0, v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    move v1, v0

    .line 622
    :goto_0
    iget-object v3, p0, Landroid/hardware/broadcastradio/AlertInfo;->categoryArray:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 625
    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 628
    :goto_1
    iget-object v1, p0, Landroid/hardware/broadcastradio/AlertInfo;->areas:[Landroid/hardware/broadcastradio/AlertArea;

    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 629
    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->alertAreaFromHalAlertArea(Landroid/hardware/broadcastradio/AlertArea;)Landroid/hardware/radio/RadioAlert$AlertArea;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    :cond_1
    new-instance v1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    iget v3, p0, Landroid/hardware/broadcastradio/AlertInfo;->urgency:I

    iget v4, p0, Landroid/hardware/broadcastradio/AlertInfo;->severity:I

    iget v5, p0, Landroid/hardware/broadcastradio/AlertInfo;->certainty:I

    iget-object v6, p0, Landroid/hardware/broadcastradio/AlertInfo;->description:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/broadcastradio/AlertInfo;->language:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Landroid/hardware/radio/RadioAlert$AlertInfo;-><init>([IIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static amfmConfigToBands(Landroid/hardware/broadcastradio/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 262
    new-array v0, v1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0

    .line 265
    :cond_0
    iget-object v2, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    array-length v2, v2

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v1, v2, :cond_3

    .line 272
    iget-object v4, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/Utils;->getBand(I)Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    move-result-object v4

    .line 273
    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->UNKNOWN:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    if-ne v4, v5, :cond_1

    .line 274
    iget-object v4, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string v6, "Unknown frequency band at %d kHz"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 277
    :cond_1
    sget-object v5, Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;->FM:Lcom/android/server/broadcastradio/aidl/Utils$FrequencyBand;

    const/4 v7, 0x0

    if-ne v4, v5, :cond_2

    .line 278
    new-instance v6, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    iget-object v4, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v1

    iget v9, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    iget v10, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    iget v11, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v6 .. v16}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(IIIIIZZZZZ)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 287
    :cond_2
    new-instance v6, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    iget-object v4, v0, Landroid/hardware/broadcastradio/AmFmRegionConfig;->ranges:[Landroid/hardware/broadcastradio/AmFmBandRange;

    aget-object v4, v4, v1

    iget v9, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->lowerBound:I

    iget v10, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->upperBound:I

    iget v11, v4, Landroid/hardware/broadcastradio/AmFmBandRange;->spacing:I

    const/4 v12, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(IIIIIZ)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_3
    new-instance v0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public static announcementFromHalAnnouncement(Landroid/hardware/broadcastradio/Announcement;)Landroid/hardware/radio/Announcement;
    .locals 3

    .line 831
    new-instance v0, Landroid/hardware/radio/Announcement;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Announcement;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 832
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-byte v2, p0, Landroid/hardware/broadcastradio/Announcement;->type:B

    iget-object p0, p0, Landroid/hardware/broadcastradio/Announcement;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 835
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/radio/Announcement;-><init>(Landroid/hardware/radio/ProgramSelector;ILjava/util/Map;)V

    return-object v0
.end method

.method public static configFlagMeetsSdkVersionRequirement(II)Z
    .locals 1

    .line 822
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastV(I)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/16 p1, 0xb

    if-eq p0, p1, :cond_0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static convertChunkToTargetSdkVersion(Landroid/hardware/radio/ProgramList$Chunk;I)Landroid/hardware/radio/ProgramList$Chunk;
    .locals 5

    .line 802
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 803
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getModified()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 804
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 805
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 806
    invoke-static {v2, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 807
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 810
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 811
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->getRemoved()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 812
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 813
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/UniqueProgramIdentifier;

    .line 814
    invoke-virtual {v3}, Landroid/hardware/radio/UniqueProgramIdentifier;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 815
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 818
    :cond_3
    new-instance p1, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isPurge()Z

    move-result v2

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Chunk;->isComplete()Z

    move-result p0

    invoke-direct {p1, v2, p0, v0, v1}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-object p1
.end method

.method public static dabConfigFromHalDabTableEntries([Landroid/hardware/broadcastradio/DabTableEntry;)Ljava/util/Map;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 307
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 308
    aget-object v2, p0, v1

    iget-object v3, v2, Landroid/hardware/broadcastradio/DabTableEntry;->label:Ljava/lang/String;

    iget v2, v2, Landroid/hardware/broadcastradio/DabTableEntry;->frequencyKhz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static filterToHalProgramFilter(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/broadcastradio/ProgramFilter;
    .locals 7

    if-nez p0, :cond_0

    .line 726
    new-instance p0, Landroid/hardware/radio/ProgramList$Filter;

    invoke-direct {p0}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    .line 729
    :cond_0
    new-instance v0, Landroid/hardware/broadcastradio/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramFilter;-><init>()V

    .line 731
    new-instance v1, Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 732
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 733
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifierTypes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 734
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 735
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->getIdentifiers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 738
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 739
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 740
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v5

    .line 741
    iget v6, v5, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eqz v6, :cond_2

    .line 742
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 744
    :cond_2
    const-string v5, "Invalid identifiers: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "BcRadioAidlSrv.convert"

    invoke-static {v6, v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 748
    :cond_3
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifierTypes:[I

    .line 749
    new-instance v1, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->identifiers:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 750
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areCategoriesIncluded()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/broadcastradio/ProgramFilter;->includeCategories:Z

    .line 751
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramList$Filter;->areModificationsExcluded()Z

    move-result p0

    iput-boolean p0, v0, Landroid/hardware/broadcastradio/ProgramFilter;->excludeModifications:Z

    return-object v0
.end method

.method public static geocodeFromHalGeocode(Landroid/hardware/broadcastradio/Geocode;)Landroid/hardware/radio/RadioAlert$Geocode;
    .locals 2

    .line 600
    new-instance v0, Landroid/hardware/radio/RadioAlert$Geocode;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Geocode;->valueName:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/broadcastradio/Geocode;->value:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/RadioAlert$Geocode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static halResultToTunerResult(I)I
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x7

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;
    .locals 4

    .line 374
    iget v0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x5

    const/16 v2, 0xe

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/16 v0, 0xf

    .line 389
    :cond_2
    :goto_0
    new-instance v1, Landroid/hardware/radio/ProgramSelector$Identifier;

    iget-wide v2, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    invoke-direct {v1, v0, v2, v3}, Landroid/hardware/radio/ProgramSelector$Identifier;-><init>(IJ)V

    return-object v1
.end method

.method public static identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z
    .locals 3

    .line 758
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastV(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 759
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    return v1

    .line 763
    :cond_0
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastU(I)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 764
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result p0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;
    .locals 5

    .line 350
    new-instance v0, Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramIdentifier;-><init>()V

    .line 351
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    const/4 v2, 0x5

    const/16 v3, 0xe

    if-ne v1, v3, :cond_0

    .line 352
    iput v2, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    const/16 v4, 0xf

    if-ne v1, v4, :cond_1

    .line 355
    iput v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 362
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v3

    .line 363
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector$Identifier;->getType()I

    move-result p0

    if-ne p0, v2, :cond_2

    const-wide/32 v1, 0xffff

    and-long/2addr v1, v3

    const/16 p0, 0x10

    ushr-long/2addr v3, p0

    const/16 p0, 0x20

    shl-long/2addr v3, p0

    or-long/2addr v1, v3

    .line 364
    iput-wide v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    return-object v0

    .line 366
    :cond_2
    iput-wide v3, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    return-object v0
.end method

.method public static identifierTypeToProgramType(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2714

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static identifierTypesToProgramTypes([I)[I
    .locals 5

    .line 233
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 235
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 236
    aget v3, p0, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x3

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 253
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 254
    aput v2, p0, v1

    move v1, v3

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public static isAtLeastU(I)Z
    .locals 2

    const-wide/32 v0, 0xf9a4b7c

    .line 95
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public static isAtLeastV(I)Z
    .locals 2

    const-wide/32 v0, 0x120927cf

    .line 100
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    return p0
.end method

.method public static isEmpty(Landroid/hardware/broadcastradio/ProgramSelector;)Z
    .locals 4

    .line 433
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v1, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-nez v1, :cond_0

    iget-wide v0, v0, Landroid/hardware/broadcastradio/ProgramIdentifier;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z
    .locals 2

    .line 398
    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget p0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1

    .line 404
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidLogicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z
    .locals 2

    .line 659
    iget p0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1

    .line 664
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidPhysicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z
    .locals 2

    .line 668
    iget p0, p0, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd

    if-eq p0, v1, :cond_1

    .line 672
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isVendorIdentifierType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVendorIdentifierType(I)Z
    .locals 1

    .line 0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7cf

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static polygonFromHalPolygon(Landroid/hardware/broadcastradio/Polygon;)Landroid/hardware/radio/RadioAlert$Polygon;
    .locals 9

    .line 580
    iget-object v0, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "BcRadioAidlSrv.convert"

    if-ge v1, v2, :cond_0

    .line 581
    const-string p0, "Number of coordinates in alert polygon cannot be less than 4"

    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const/4 v1, 0x0

    .line 583
    aget-object v2, v0, v1

    iget-wide v5, v2, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v0, v7

    iget-wide v7, v7, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    iget-wide v5, v2, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget-wide v7, v0, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    cmpl-double v0, v5, v7

    if-eqz v0, :cond_1

    goto :goto_1

    .line 590
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 591
    :goto_0
    iget-object v2, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 592
    new-instance v2, Landroid/hardware/radio/RadioAlert$Coordinate;

    iget-object v3, p0, Landroid/hardware/broadcastradio/Polygon;->coordinates:[Landroid/hardware/broadcastradio/Coordinate;

    aget-object v3, v3, v1

    iget-wide v4, v3, Landroid/hardware/broadcastradio/Coordinate;->latitude:D

    iget-wide v6, v3, Landroid/hardware/broadcastradio/Coordinate;->longitude:D

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/hardware/radio/RadioAlert$Coordinate;-><init>(DD)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    :cond_2
    new-instance p0, Landroid/hardware/radio/RadioAlert$Polygon;

    invoke-direct {p0, v0}, Landroid/hardware/radio/RadioAlert$Polygon;-><init>(Ljava/util/List;)V

    return-object p0

    .line 587
    :cond_3
    :goto_1
    const-string p0, "The first and the last coordinate in alert polygon cannot be different"

    invoke-static {v4, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 10

    .line 677
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 680
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 681
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 682
    :goto_0
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->relatedContent:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 683
    aget-object v1, v1, v0

    .line 684
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 686
    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 702
    :cond_2
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->selector:Landroid/hardware/broadcastradio/ProgramSelector;

    .line 703
    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 704
    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 705
    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v3

    iget v5, p0, Landroid/hardware/broadcastradio/ProgramInfo;->infoFlags:I

    iget v6, p0, Landroid/hardware/broadcastradio/ProgramInfo;->signalQuality:I

    iget-object v7, p0, Landroid/hardware/broadcastradio/ProgramInfo;->metadata:[Landroid/hardware/broadcastradio/Metadata;

    .line 709
    invoke-static {v7}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/broadcastradio/ProgramInfo;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 710
    invoke-static {v8}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v8

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->emergencyAlert:Landroid/hardware/broadcastradio/Alert;

    .line 711
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->radioAlertFromHalAlert(Landroid/hardware/broadcastradio/Alert;)Landroid/hardware/radio/RadioAlert;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ProgramSelector$Identifier;Landroid/hardware/radio/ProgramSelector$Identifier;Ljava/util/Collection;IILandroid/hardware/radio/RadioMetadata;Ljava/util/Map;Landroid/hardware/radio/RadioAlert;)V

    return-object v0
.end method

.method public static programInfoMeetsSdkVersionRequirement(Landroid/hardware/radio/RadioManager$ProgramInfo;I)Z
    .locals 2

    .line 783
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 786
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getLogicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 789
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getPhysicallyTunedTo()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    .line 792
    :cond_3
    invoke-virtual {p0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getRelatedContent()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 793
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 794
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static programSelectorFromHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;
    .locals 7

    .line 440
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isEmpty(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 444
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 445
    :goto_0
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 446
    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 447
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v4

    if-nez v4, :cond_1

    .line 450
    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    aget-object v4, v4, v3

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "BcRadioAidlSrv.convert"

    const-string v6, "invalid secondary id: %s"

    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 453
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    :cond_3
    new-instance v3, Landroid/hardware/radio/ProgramSelector;

    iget-object v4, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v4, v4, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    .line 458
    invoke-static {v4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypeToProgramType(I)I

    move-result v4

    iget-object p0, p0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 459
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierFromHalProgramIdentifier(Landroid/hardware/broadcastradio/ProgramIdentifier;)Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v2, [Landroid/hardware/radio/ProgramSelector$Identifier;

    .line 460
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-direct {v3, v4, p0, v0, v1}, Landroid/hardware/radio/ProgramSelector;-><init>(ILandroid/hardware/radio/ProgramSelector$Identifier;[Landroid/hardware/radio/ProgramSelector$Identifier;[J)V

    return-object v3

    :cond_4
    :goto_2
    return-object v1
.end method

.method public static programSelectorMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector;I)Z
    .locals 3

    .line 770
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 773
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    move v0, v1

    .line 774
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 775
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierMeetsSdkVersionRequirement(Landroid/hardware/radio/ProgramSelector$Identifier;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static programSelectorToHalProgramSelector(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/ProgramSelector;
    .locals 6

    .line 410
    new-instance v0, Landroid/hardware/broadcastradio/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/ProgramSelector;-><init>()V

    .line 413
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/broadcastradio/ProgramSelector;->primaryId:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 414
    invoke-virtual {p0}, Landroid/hardware/radio/ProgramSelector;->getSecondaryIds()[Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object p0

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 416
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 417
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierToHalProgramIdentifier(Landroid/hardware/radio/ProgramSelector$Identifier;)Landroid/hardware/broadcastradio/ProgramIdentifier;

    move-result-object v3

    .line 418
    iget v4, v3, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eqz v4, :cond_0

    .line 419
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
    :cond_0
    aget-object v3, p0, v2

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.convert"

    const-string v5, "Invalid secondary id: %s"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    :cond_1
    new-instance p0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/broadcastradio/ProgramIdentifier;

    iput-object p0, v0, Landroid/hardware/broadcastradio/ProgramSelector;->secondaryIds:[Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 425
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidHalProgramSelector(Landroid/hardware/broadcastradio/ProgramSelector;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static propertiesFromHalProperties(ILjava/lang/String;Landroid/hardware/broadcastradio/Properties;Landroid/hardware/broadcastradio/AmFmRegionConfig;[Landroid/hardware/broadcastradio/DabTableEntry;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 20

    move-object/from16 v0, p2

    .line 316
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    iget-object v1, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    invoke-static {v1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->identifierTypesToProgramTypes([I)[I

    move-result-object v16

    .line 321
    new-instance v2, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iget-object v6, v0, Landroid/hardware/broadcastradio/Properties;->maker:Ljava/lang/String;

    iget-object v7, v0, Landroid/hardware/broadcastradio/Properties;->product:Ljava/lang/String;

    iget-object v8, v0, Landroid/hardware/broadcastradio/Properties;->version:Ljava/lang/String;

    iget-object v9, v0, Landroid/hardware/broadcastradio/Properties;->serial:Ljava/lang/String;

    .line 340
    invoke-static/range {p3 .. p3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->amfmConfigToBands(Landroid/hardware/broadcastradio/AmFmRegionConfig;)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v14

    iget-object v1, v0, Landroid/hardware/broadcastradio/Properties;->supportedIdentifierTypes:[I

    .line 344
    invoke-static/range {p4 .. p4}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->dabConfigFromHalDabTableEntries([Landroid/hardware/broadcastradio/DabTableEntry;)Ljava/util/Map;

    move-result-object v18

    iget-object v0, v0, Landroid/hardware/broadcastradio/Properties;->vendorInfo:[Landroid/hardware/broadcastradio/VendorKeyValue;

    .line 345
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object v19

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v17, v1

    invoke-direct/range {v2 .. v19}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZ[Landroid/hardware/radio/RadioManager$BandDescriptor;Z[I[ILjava/util/Map;Ljava/util/Map;)V

    return-object v2
.end method

.method public static radioAlertFromHalAlert(Landroid/hardware/broadcastradio/Alert;)Landroid/hardware/radio/RadioAlert;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 647
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 648
    :goto_0
    iget-object v2, p0, Landroid/hardware/broadcastradio/Alert;->infoArray:[Landroid/hardware/broadcastradio/AlertInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 649
    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->alertInfoFromHalAlertInfo(Landroid/hardware/broadcastradio/AlertInfo;)Landroid/hardware/radio/RadioAlert$AlertInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    :cond_1
    new-instance v1, Landroid/hardware/radio/RadioAlert;

    iget v2, p0, Landroid/hardware/broadcastradio/Alert;->status:I

    iget p0, p0, Landroid/hardware/broadcastradio/Alert;->messageType:I

    invoke-direct {v1, v2, p0, v0}, Landroid/hardware/radio/RadioAlert;-><init>(IILjava/util/List;)V

    return-object v1
.end method

.method public static radioMetadataFromHalMetadata([Landroid/hardware/broadcastradio/Metadata;)Landroid/hardware/radio/RadioMetadata;
    .locals 5

    .line 466
    new-instance v0, Landroid/hardware/radio/RadioMetadata$Builder;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$Builder;-><init>()V

    const/4 v1, 0x0

    .line 468
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 469
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getTag()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 563
    aget-object v2, p0, v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "BcRadioAidlSrv.convert"

    const-string v4, "Ignored unknown metadata entry: %s with HD radio flag enabled"

    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 559
    :pswitch_0
    aget-object v2, p0, v1

    .line 560
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getHdSubChannelsAvailable()I

    move-result v2

    .line 559
    const-string v3, "android.hardware.radio.metadata.HD_SUBCHANNELS_AVAILABLE"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 555
    :pswitch_1
    aget-object v2, p0, v1

    .line 556
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameLong()Ljava/lang/String;

    move-result-object v2

    .line 555
    const-string v3, "android.hardware.radio.metadata.HD_STATION_NAME_LONG"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 551
    :pswitch_2
    aget-object v2, p0, v1

    .line 552
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getHdStationNameShort()Ljava/lang/String;

    move-result-object v2

    .line 551
    const-string v3, "android.hardware.radio.metadata.HD_STATION_NAME_SHORT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 547
    :pswitch_3
    aget-object v2, p0, v1

    .line 548
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getUfids()[Ljava/lang/String;

    move-result-object v2

    .line 547
    const-string v3, "android.hardware.radio.metadata.UFIDS"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 543
    :pswitch_4
    aget-object v2, p0, v1

    .line 544
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getCommercial()Ljava/lang/String;

    move-result-object v2

    .line 543
    const-string v3, "android.hardware.radio.metadata.COMMERCIAL"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 539
    :pswitch_5
    aget-object v2, p0, v1

    .line 540
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getCommentActualText()Ljava/lang/String;

    move-result-object v2

    .line 539
    const-string v3, "android.hardware.radio.metadata.COMMENT_ACTUAL_TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 534
    :pswitch_6
    aget-object v2, p0, v1

    .line 536
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getCommentShortDescription()Ljava/lang/String;

    move-result-object v2

    .line 534
    const-string v3, "android.hardware.radio.metadata.COMMENT_SHORT_DESCRIPTION"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 530
    :pswitch_7
    aget-object v2, p0, v1

    .line 531
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getGenre()Ljava/lang/String;

    move-result-object v2

    .line 530
    const-string v3, "android.hardware.radio.metadata.GENRE"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 523
    :pswitch_8
    aget-object v2, p0, v1

    .line 524
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentNameShort()Ljava/lang/String;

    move-result-object v2

    .line 523
    const-string v3, "android.hardware.radio.metadata.DAB_COMPONENT_NAME_SHORT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 519
    :pswitch_9
    aget-object v2, p0, v1

    .line 520
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabComponentName()Ljava/lang/String;

    move-result-object v2

    .line 519
    const-string v3, "android.hardware.radio.metadata.DAB_COMPONENT_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 515
    :pswitch_a
    aget-object v2, p0, v1

    .line 516
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceNameShort()Ljava/lang/String;

    move-result-object v2

    .line 515
    const-string v3, "android.hardware.radio.metadata.DAB_SERVICE_NAME_SHORT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 511
    :pswitch_b
    aget-object v2, p0, v1

    .line 512
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabServiceName()Ljava/lang/String;

    move-result-object v2

    .line 511
    const-string v3, "android.hardware.radio.metadata.DAB_SERVICE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 507
    :pswitch_c
    aget-object v2, p0, v1

    .line 508
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleNameShort()Ljava/lang/String;

    move-result-object v2

    .line 507
    const-string v3, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME_SHORT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 503
    :pswitch_d
    aget-object v2, p0, v1

    .line 504
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getDabEnsembleName()Ljava/lang/String;

    move-result-object v2

    .line 503
    const-string v3, "android.hardware.radio.metadata.DAB_ENSEMBLE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto/16 :goto_1

    .line 499
    :pswitch_e
    aget-object v2, p0, v1

    .line 500
    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getProgramName()Ljava/lang/String;

    move-result-object v2

    .line 499
    const-string v3, "android.hardware.radio.metadata.PROGRAM_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 496
    :pswitch_f
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getAlbumArt()I

    move-result v2

    const-string v3, "android.hardware.radio.metadata.ART"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 493
    :pswitch_10
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getStationIcon()I

    move-result v2

    const-string v3, "android.hardware.radio.metadata.ICON"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 490
    :pswitch_11
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getSongAlbum()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.ALBUM"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 487
    :pswitch_12
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getSongArtist()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.ARTIST"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 484
    :pswitch_13
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getSongTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 481
    :pswitch_14
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getRdsRt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.RDS_RT"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 478
    :pswitch_15
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getRbdsPty()I

    move-result v2

    const-string v3, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 475
    :pswitch_16
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getRdsPty()I

    move-result v2

    const-string v3, "android.hardware.radio.metadata.RDS_PTY"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putInt(Ljava/lang/String;I)Landroid/hardware/radio/RadioMetadata$Builder;

    goto :goto_1

    .line 472
    :pswitch_17
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/hardware/broadcastradio/Metadata;->getRdsPs()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.hardware.radio.metadata.RDS_PS"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/radio/RadioMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Builder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 575
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/radio/RadioMetadata$Builder;->build()Landroid/hardware/radio/RadioMetadata;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3

    .line 104
    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-nez v0, :cond_0

    .line 105
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unknown error"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 108
    :cond_0
    check-cast p0, Landroid/os/ServiceSpecificException;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch p0, :pswitch_data_0

    .line 127
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": unknown error ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 111
    :pswitch_0
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": UNKNOWN_ERROR"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 125
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": CANCELED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 123
    :pswitch_2
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": TIMEOUT"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 121
    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": NOT_SUPPORTED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 119
    :pswitch_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": INVALID_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 117
    :pswitch_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": INVALID_ARGUMENTS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 114
    :pswitch_6
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": INTERNAL_ERROR"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static tunedProgramInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;
    .locals 1

    .line 717
    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidLogicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    .line 718
    invoke-static {v0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isValidPhysicallyTunedTo(Landroid/hardware/broadcastradio/ProgramIdentifier;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 721
    :cond_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;
    .locals 6

    if-nez p0, :cond_0

    .line 178
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 181
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 182
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 183
    iget-object v4, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v5, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    :cond_2
    :goto_1
    iget-object v3, v3, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BcRadioAidlSrv.convert"

    const-string v5, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static vendorInfoToHalVendorKeyValues(Ljava/util/Map;)[Landroid/hardware/broadcastradio/VendorKeyValue;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 157
    new-array p0, p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object p0

    .line 160
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    new-instance v2, Landroid/hardware/broadcastradio/VendorKeyValue;

    invoke-direct {v2}, Landroid/hardware/broadcastradio/VendorKeyValue;-><init>()V

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->value:Ljava/lang/String;

    .line 165
    iget-object v3, v2, Landroid/hardware/broadcastradio/VendorKeyValue;->key:Ljava/lang/String;

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_2
    :goto_1
    const-string v2, "VendorKeyValue contains invalid entry: key = %s, value = %s"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "BcRadioAidlSrv.convert"

    invoke-static {v3, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_3
    new-instance p0, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    return-object p0
.end method
