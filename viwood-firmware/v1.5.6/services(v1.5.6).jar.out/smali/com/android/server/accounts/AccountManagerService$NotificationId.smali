.class public Lcom/android/server/accounts/AccountManagerService$NotificationId;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# instance fields
.field public final mId:I

.field public final mTag:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6898
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 6899
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    return-void
.end method
