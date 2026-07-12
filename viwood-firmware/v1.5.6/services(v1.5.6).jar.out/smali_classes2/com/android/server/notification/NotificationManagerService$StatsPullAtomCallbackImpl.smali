.class public Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 3101
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 1

    const/16 v0, 0x2764

    if-eq p1, v0, :cond_0

    const/16 v0, 0x27f7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 3112
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown tagId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3110
    :cond_0
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mpullNotificationStates(Lcom/android/server/notification/NotificationManagerService;ILjava/util/List;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2757
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
