.class public abstract Lcom/android/server/display/DisplayTopologyXmlStore$Injector;
.super Ljava/lang/Object;
.source "DisplayTopologyXmlStore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDisplayIdToUniqueIdMapping()Landroid/util/SparseArray;
.end method

.method public final getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1

    .line 576
    invoke-static {}, Lcom/android/server/display/DisplayTopologyXmlStore;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 577
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " exists="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayManager.DisplayTopologyXmlStore"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getTopologyFilePrintWriter(I)Landroid/util/AtomicFilePrintWriter;
    .locals 1

    .line 569
    new-instance p0, Landroid/util/AtomicFile;

    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUserTopologyFile(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "topology-state"

    invoke-direct {p0, p1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 571
    new-instance p1, Landroid/util/AtomicFilePrintWriter;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Landroid/util/AtomicFilePrintWriter;-><init>(Landroid/util/AtomicFile;Ljava/nio/charset/Charset;)V

    return-object p1
.end method

.method public abstract getUniqueIdToDisplayIdMapping()Ljava/util/Map;
.end method

.method public readProductTopologies()Ljava/io/InputStream;
    .locals 1

    .line 560
    invoke-static {}, Lcom/android/server/display/DisplayTopologyXmlStore;->-$$Nest$smgetProductTopologyFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public readUserTopologies(I)Ljava/io/InputStream;
    .locals 0

    .line 565
    invoke-static {p1}, Lcom/android/server/display/DisplayTopologyXmlStore;->getUserTopologyFile(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public readVendorTopologies()Ljava/io/InputStream;
    .locals 1

    .line 551
    invoke-static {}, Lcom/android/server/display/DisplayTopologyXmlStore;->-$$Nest$smgetVendorTopologyFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayTopologyXmlStore$Injector;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method
