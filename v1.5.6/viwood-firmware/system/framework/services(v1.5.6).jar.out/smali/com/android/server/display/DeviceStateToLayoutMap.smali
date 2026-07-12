.class public Lcom/android/server/display/DeviceStateToLayoutMap;
.super Ljava/lang/Object;
.source "DeviceStateToLayoutMap.java"


# instance fields
.field public final mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

.field public final mIsPortInDisplayLayoutEnabled:Z

.field public final mLayoutMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 75
    invoke-static {}, Lcom/android/server/display/DeviceStateToLayoutMap;->getConfigFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;Ljava/io/File;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPortInDisplayLayoutEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    .line 81
    iput-object p1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    .line 82
    invoke-virtual {p0, p3}, Lcom/android/server/display/DeviceStateToLayoutMap;->loadLayoutsFromConfig(Ljava/io/File;)V

    const/4 p1, -0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    return-void
.end method

.method public static getConfigFile()Ljava/io/File;
    .locals 2

    .line 87
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 92
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "etc/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final createLayout(I)Lcom/android/server/display/layout/Layout;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to create a second layout for state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceStateToLayoutMap"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_0
    new-instance v0, Lcom/android/server/display/layout/Layout;

    invoke-direct {v0}, Lcom/android/server/display/layout/Layout;-><init>()V

    .line 200
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 97
    const-string v0, "DeviceStateToLayoutMap:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v0, "-----------------------"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsPortInDisplayLayoutEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v0, "Registered Layouts:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/server/display/layout/Layout;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/layout/Layout;

    if-nez p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/layout/Layout;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;
    .locals 2

    .line 171
    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getAddress_optional()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object p0

    return-object p0

    .line 175
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getPort_optional()Ljava/math/BigInteger;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getPort_optional()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/view/DisplayAddress;->fromPortAndModel(ILjava/lang/Long;)Landroid/view/DisplayAddress$Physical;

    move-result-object p0

    return-object p0

    .line 176
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must specify a display identifier in display layout configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPosition(Ljava/lang/String;)I
    .locals 0

    .line 185
    const-string p0, "front"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_0
    const-string/jumbo p0, "rear"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public loadLayoutsFromConfig(Ljava/io/File;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 129
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading display layouts from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceStateToLayoutMap"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    invoke-static {v2}, Lcom/android/server/display/config/layout/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/layout/Layouts;

    move-result-object v4

    if-nez v4, :cond_2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display layout config not found: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v4, v0

    goto/16 :goto_4

    .line 136
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Lcom/android/server/display/config/layout/Layouts;->getLayout()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/config/layout/Layout;

    .line 137
    invoke-virtual {v5}, Lcom/android/server/display/config/layout/Layout;->getState()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 138
    invoke-virtual {v0, v6}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    move-result-object v7

    .line 139
    invoke-virtual {v5}, Lcom/android/server/display/config/layout/Layout;->getDisplay()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/layout/Display;

    .line 141
    invoke-virtual {v0, v6}, Lcom/android/server/display/DeviceStateToLayoutMap;->getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;

    move-result-object v8

    .line 143
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getPosition()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/display/DeviceStateToLayoutMap;->getPosition(Ljava/lang/String;)I

    move-result v13

    .line 144
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getLeadDisplayAddress()Ljava/math/BigInteger;

    move-result-object v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    :goto_2
    move-object v14, v9

    goto :goto_3

    .line 147
    :cond_3
    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v9

    .line 146
    invoke-static {v9, v10}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v9

    goto :goto_2

    .line 150
    :goto_3
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->isDefaultDisplay()Z

    move-result v9

    .line 151
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->isEnabled()Z

    move-result v10

    .line 152
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getDisplayGroup()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    .line 156
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v15

    .line 157
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getRefreshRateZoneId()Ljava/lang/String;

    move-result-object v16

    .line 158
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getRefreshRateThermalThrottlingMapId()Ljava/lang/String;

    move-result-object v17

    .line 159
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v18

    .line 148
    invoke-virtual/range {v7 .. v18}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/layout/DisplayIdProducer;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/display/layout/Layout;->postProcessLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 130
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 164
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display layout config file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void
.end method

.method public size()I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method
