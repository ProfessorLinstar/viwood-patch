.class public Lcom/android/server/pm/PackageMetrics$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "PackageMetrics.java"


# instance fields
.field public final synthetic val$apkDir:Ljava/io/File;

.field public final synthetic val$apksSize:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageMetrics;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 200
    iput-object p2, p0, Lcom/android/server/pm/PackageMetrics$1;->val$apkDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/pm/PackageMetrics$1;->val$apksSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 200
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageMetrics$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics$1;->val$apkDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 205
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0

    .line 207
    :cond_0
    sget-object p0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 200
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageMetrics$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 214
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 215
    iget-object p0, p0, Lcom/android/server/pm/PackageMetrics$1;->val$apksSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 217
    :cond_0
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method
