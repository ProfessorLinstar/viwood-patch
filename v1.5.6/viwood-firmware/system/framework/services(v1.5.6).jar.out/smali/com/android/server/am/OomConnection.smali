.class public final Lcom/android/server/am/OomConnection;
.super Ljava/lang/Object;
.source "OomConnection.java"


# instance fields
.field public final mOomConnectionThread:Lcom/android/server/am/OomConnection$OomConnectionThread;

.field public final mOomListener:Lcom/android/server/am/OomConnection$OomConnectionListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmOomListener(Lcom/android/server/am/OomConnection;)Lcom/android/server/am/OomConnection$OomConnectionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/OomConnection;->mOomListener:Lcom/android/server/am/OomConnection$OomConnectionListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smwaitOom()[Landroid/os/OomKillRecord;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/server/am/OomConnection;->waitOom()[Landroid/os/OomKillRecord;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/am/OomConnection$OomConnectionListener;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/am/OomConnection;->mOomListener:Lcom/android/server/am/OomConnection$OomConnectionListener;

    .line 45
    new-instance p1, Lcom/android/server/am/OomConnection$OomConnectionThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/OomConnection$OomConnectionThread;-><init>(Lcom/android/server/am/OomConnection;Lcom/android/server/am/OomConnection-IA;)V

    iput-object p1, p0, Lcom/android/server/am/OomConnection;->mOomConnectionThread:Lcom/android/server/am/OomConnection$OomConnectionThread;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static native waitOom()[Landroid/os/OomKillRecord;
.end method
