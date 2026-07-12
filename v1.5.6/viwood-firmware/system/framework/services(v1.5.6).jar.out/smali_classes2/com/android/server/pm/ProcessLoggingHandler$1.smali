.class public Lcom/android/server/pm/ProcessLoggingHandler$1;
.super Landroid/content/pm/IOnChecksumsReadyListener$Stub;
.source "ProcessLoggingHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ProcessLoggingHandler;

.field public final synthetic val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->this$0:Lcom/android/server/pm/ProcessLoggingHandler;

    iput-object p2, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    invoke-direct {p0}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecksumsReady(Ljava/util/List;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->this$0:Lcom/android/server/pm/ProcessLoggingHandler;

    iget-object p0, p0, Lcom/android/server/pm/ProcessLoggingHandler$1;->val$loggingInfo:Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/ProcessLoggingHandler;->processChecksums(Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;Ljava/util/List;)V

    return-void
.end method
