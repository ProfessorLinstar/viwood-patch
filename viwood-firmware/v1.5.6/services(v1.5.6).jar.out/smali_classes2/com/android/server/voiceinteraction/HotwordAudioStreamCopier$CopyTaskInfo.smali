.class public Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;
.super Ljava/lang/Object;
.source "HotwordAudioStreamCopier.java"


# instance fields
.field public final mCopyBufferLength:I

.field public final mSink:Landroid/os/ParcelFileDescriptor;

.field public final mSource:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCopyBufferLength(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mCopyBufferLength:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSink(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSink:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSource(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSource:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSource:Landroid/os/ParcelFileDescriptor;

    .line 187
    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mSink:Landroid/os/ParcelFileDescriptor;

    .line 188
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;->mCopyBufferLength:I

    return-void
.end method
