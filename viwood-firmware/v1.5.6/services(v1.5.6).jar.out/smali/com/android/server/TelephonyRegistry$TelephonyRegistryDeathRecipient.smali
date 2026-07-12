.class public Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final binder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->this$0:Lcom/android/server/TelephonyRegistry;

    iget-object p0, p0, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;->binder:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/TelephonyRegistry;->-$$Nest$mremove(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    return-void
.end method
