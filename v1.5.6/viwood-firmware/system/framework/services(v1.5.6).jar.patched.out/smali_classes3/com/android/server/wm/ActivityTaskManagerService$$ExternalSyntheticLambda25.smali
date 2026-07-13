.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/HeptConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    move-object p0, p1

    check-cast p0, Landroid/app/ActivityManagerInternal;

    move-object p1, p2

    check-cast p1, Landroid/content/ComponentName;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move-object p4, p5

    check-cast p4, Landroid/os/IBinder;

    move-object p5, p6

    check-cast p5, Landroid/content/ComponentName;

    move-object p6, p7

    check-cast p6, Landroid/app/assist/ActivityId;

    invoke-virtual/range {p0 .. p6}, Landroid/app/ActivityManagerInternal;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;Landroid/app/assist/ActivityId;)V

    return-void
.end method
