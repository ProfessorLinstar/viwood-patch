.class public Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;
.super Ljava/lang/Object;
.source "ProcessLoggingHandler.java"


# instance fields
.field public apkHash:Ljava/lang/String;

.field public pendingLogEntries:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    return-void
.end method
