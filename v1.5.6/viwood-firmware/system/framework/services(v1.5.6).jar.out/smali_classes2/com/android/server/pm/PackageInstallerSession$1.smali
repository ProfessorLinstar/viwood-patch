.class public Lcom/android/server/pm/PackageInstallerSession$1;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Ljava/io/FileFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 859
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 860
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".removed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 861
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".idsig"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 862
    :cond_2
    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smisAppMetadata(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    .line 863
    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->artServiceV3()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 864
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/art/ArtManagedInstallFileHelper;->isArtManaged(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    .line 866
    :cond_4
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->isDexMetadataFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    .line 868
    :cond_5
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->isDigestOrDigestSignatureFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method
