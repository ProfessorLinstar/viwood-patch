.class public Lcom/android/server/wm/TaskPersister$RecentTaskFiles;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# instance fields
.field public final mLoadedFiles:Ljava/util/ArrayList;

.field public final mUserTaskFiles:[Ljava/io/File;


# direct methods
.method public constructor <init>([Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;->mUserTaskFiles:[Ljava/io/File;

    .line 559
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$RecentTaskFiles;->mLoadedFiles:Ljava/util/ArrayList;

    return-void
.end method
