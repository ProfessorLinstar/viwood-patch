.class public abstract Lcom/android/server/soundtrigger_middleware/AidlUtil;
.super Ljava/lang/Object;
.source "AidlUtil.java"


# direct methods
.method public static newAbortEvent()Landroid/media/soundtrigger_middleware/RecognitionEventSys;
    .locals 2

    .line 58
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 59
    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    .line 60
    iput v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 61
    new-instance v1, Landroid/media/soundtrigger_middleware/RecognitionEventSys;

    invoke-direct {v1}, Landroid/media/soundtrigger_middleware/RecognitionEventSys;-><init>()V

    .line 62
    iput-object v0, v1, Landroid/media/soundtrigger_middleware/RecognitionEventSys;->recognitionEvent:Landroid/media/soundtrigger/RecognitionEvent;

    return-object v1
.end method

.method public static newAbortPhraseEvent()Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;
    .locals 3

    .line 72
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyPhraseRecognitionEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;

    move-result-object v0

    .line 73
    iget-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    const/4 v2, 0x0

    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->type:I

    const/4 v2, 0x1

    .line 74
    iput v2, v1, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    .line 75
    new-instance v1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;

    invoke-direct {v1}, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;-><init>()V

    .line 76
    iput-object v0, v1, Landroid/media/soundtrigger_middleware/PhraseRecognitionEventSys;->phraseRecognitionEvent:Landroid/media/soundtrigger/PhraseRecognitionEvent;

    return-object v1
.end method

.method public static newEmptyPhraseRecognitionEvent()Landroid/media/soundtrigger/PhraseRecognitionEvent;
    .locals 2

    .line 46
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionEvent;-><init>()V

    .line 47
    invoke-static {}, Lcom/android/server/soundtrigger_middleware/AidlUtil;->newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    const/4 v1, 0x0

    .line 48
    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    return-object v0
.end method

.method public static newEmptyRecognitionEvent()Landroid/media/soundtrigger/RecognitionEvent;
    .locals 2

    .line 36
    new-instance v0, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionEvent;-><init>()V

    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [B

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    return-object v0
.end method
