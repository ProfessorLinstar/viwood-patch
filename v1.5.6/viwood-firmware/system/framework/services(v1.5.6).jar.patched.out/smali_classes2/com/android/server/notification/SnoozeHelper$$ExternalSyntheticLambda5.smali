.class public final synthetic Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/SnoozeHelper;

.field public final synthetic f$1:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/notification/SnoozeHelper;

    iput-object p2, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/notification/SnoozeHelper;

    iget-object p0, p0, Lcom/android/server/notification/SnoozeHelper$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0, p0}, Lcom/android/server/notification/SnoozeHelper;->$r8$lambda$ORbxduI1i9EyexJqwlTWf9qBf98(Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method
