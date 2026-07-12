.class public final Lcom/android/server/am/OomConnection$OomConnectionThread;
.super Ljava/lang/Thread;
.source "OomConnection.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/OomConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomConnection;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/server/am/OomConnection$OomConnectionThread;->this$0:Lcom/android/server/am/OomConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/OomConnection;Lcom/android/server/am/OomConnection-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/OomConnection$OomConnectionThread;-><init>(Lcom/android/server/am/OomConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OomConnection;->-$$Nest$smwaitOom()[Landroid/os/OomKillRecord;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/server/am/OomConnection$OomConnectionThread;->this$0:Lcom/android/server/am/OomConnection;

    invoke-static {v1}, Lcom/android/server/am/OomConnection;->-$$Nest$fgetmOomListener(Lcom/android/server/am/OomConnection;)Lcom/android/server/am/OomConnection$OomConnectionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/am/OomConnection$OomConnectionListener;->handleOomEvent([Landroid/os/OomKillRecord;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed waiting for OOM events: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OomConnection"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
