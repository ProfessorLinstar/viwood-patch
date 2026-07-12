.class public Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;
.super Ljava/lang/Object;
.source "RemoteWearableSensingService.java"


# instance fields
.field public final mSecureConnection:Landroid/os/ParcelFileDescriptor;

.field public final mStatusCallback:Landroid/os/RemoteCallback;

.field public final mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/app/wearable/IWearableSensingCallback;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mSecureConnection:Landroid/os/ParcelFileDescriptor;

    .line 375
    iput-object p2, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mWearableSensingCallback:Landroid/app/wearable/IWearableSensingCallback;

    .line 376
    iput-object p3, p0, Lcom/android/server/wearable/RemoteWearableSensingService$SecureWearableConnectionContext;->mStatusCallback:Landroid/os/RemoteCallback;

    return-void
.end method
