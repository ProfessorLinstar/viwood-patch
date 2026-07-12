.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareValidation.java"


# instance fields
.field public properties:Landroid/media/soundtrigger/Properties;

.field public sessions:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/media/soundtrigger/Properties;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->sessions:Ljava/util/Set;

    .line 120
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;->properties:Landroid/media/soundtrigger/Properties;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/media/soundtrigger/Properties;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation$ModuleState;-><init>(Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;Landroid/media/soundtrigger/Properties;)V

    return-void
.end method
