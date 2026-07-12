.class public Lcom/android/server/wm/TaskPersister$RecentTaskFile;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final mTaskId:I

.field public final mXmlContent:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput p1, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mTaskId:I

    .line 546
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mFile:Ljava/io/File;

    .line 547
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFile;->mXmlContent:Ljava/io/ByteArrayInputStream;

    return-void
.end method
