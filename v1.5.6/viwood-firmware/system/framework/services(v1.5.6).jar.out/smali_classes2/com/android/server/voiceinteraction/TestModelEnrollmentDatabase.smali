.class public Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;
.super Ljava/lang/Object;
.source "TestModelEnrollmentDatabase.java"

# interfaces
.implements Lcom/android/server/voiceinteraction/IEnrolledModelDb;


# instance fields
.field public final mModelMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$9ZD-qOTBtz9NCo1fdki7lW_XSFU(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map$Entry;)Z
    .locals 2

    .line 132
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->locale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 134
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->userIds()Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static synthetic $r8$lambda$AiqJ5pbZbqz9U1OXghij9Gw7Ua4(Ljava/util/Map$Entry;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 0

    .line 136
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    return-object p0
.end method

.method public static synthetic $r8$lambda$CBIES9RYI7oqMUyJ2eLLu5Nd468(ILjava/lang/String;ILcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;)Z
    .locals 1

    .line 109
    invoke-virtual {p3}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->keyphraseId()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 110
    invoke-virtual {p3}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->locale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p3}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->userIds()Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ne-CuBP7Z67n0jU4XEGMYXlD69M(Ljava/util/Map$Entry;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 0

    .line 123
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    return-object p0
.end method

.method public static synthetic $r8$lambda$ze5WB7eydHVmjgCOnivrbuR676M(ILjava/lang/String;ILjava/util/Map$Entry;)Z
    .locals 1

    .line 119
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->keyphraseId()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 120
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->locale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;->userIds()Ljava/util/List;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 145
    const-string v0, "Using test enrollment database, with enrolled models:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;I)V

    .line 119
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 122
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda2;-><init>()V

    .line 123
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    return-object p0
.end method

.method public getKeyphraseSoundModel(Ljava/lang/String;ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 135
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$$ExternalSyntheticLambda4;-><init>()V

    .line 136
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    return-object p0
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .locals 4

    .line 99
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 100
    iget-object p0, p0, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase;->mModelMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;

    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v2

    .line 101
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/voiceinteraction/TestModelEnrollmentDatabase$EnrollmentKey;-><init>(ILjava/util/List;Ljava/lang/String;)V

    .line 100
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method
