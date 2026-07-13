.class public final Lcom/android/server/permission/access/AccessPersistence$WriteHandler;
.super Landroid/os/Handler;
.source "AccessPersistence.kt"


# instance fields
.field public final synthetic this$0:Lcom/android/server/permission/access/AccessPersistence;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessPersistence;Landroid/os/Looper;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;->this$0:Lcom/android/server/permission/access/AccessPersistence;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 189
    iget p1, p1, Landroid/os/Message;->what:I

    .line 190
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence$WriteHandler;->this$0:Lcom/android/server/permission/access/AccessPersistence;

    invoke-static {p0, p1}, Lcom/android/server/permission/access/AccessPersistence;->access$writePendingState(Lcom/android/server/permission/access/AccessPersistence;I)V

    return-void
.end method
