.class public final enum Lcom/watabou/noosa/audio/Sample;
.super Ljava/lang/Enum;
.source "Sample.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/watabou/noosa/audio/Sample;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/watabou/noosa/audio/Sample;

.field public static final enum INSTANCE:Lcom/watabou/noosa/audio/Sample;


# instance fields
.field public enabled:Z

.field public globalVolume:F

.field public ids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "La/b/a/l/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/noosa/audio/Sample;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/audio/Sample;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/watabou/noosa/audio/Sample;

    aput-object v0, v2, v1

    .line 2
    sput-object v2, Lcom/watabou/noosa/audio/Sample;->$VALUES:[Lcom/watabou/noosa/audio/Sample;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/watabou/noosa/audio/Sample;->ids:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/watabou/noosa/audio/Sample;->enabled:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/watabou/noosa/audio/Sample;->globalVolume:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/watabou/noosa/audio/Sample;
    .locals 1

    .line 1
    const-class v0, Lcom/watabou/noosa/audio/Sample;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/watabou/noosa/audio/Sample;

    return-object p0
.end method

.method public static values()[Lcom/watabou/noosa/audio/Sample;
    .locals 1

    .line 1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->$VALUES:[Lcom/watabou/noosa/audio/Sample;

    invoke-virtual {v0}, [Lcom/watabou/noosa/audio/Sample;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/watabou/noosa/audio/Sample;

    return-object v0
.end method


# virtual methods
.method public varargs load([Ljava/lang/String;)V
    .locals 12

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/watabou/noosa/audio/Sample;->ids:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    iget-object v3, p0, Lcom/watabou/noosa/audio/Sample;->ids:Ljava/util/HashMap;

    sget-object v4, La/b/a/e;->c:La/b/a/c;

    sget-object v5, La/b/a/e;->e:La/b/a/d;

    check-cast v5, La/b/a/m/a/i;

    invoke-virtual {v5, v2}, La/b/a/m/a/i;->c(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v5

    check-cast v4, La/b/a/m/a/f;

    .line 4
    iget-object v6, v4, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    if-eqz v6, :cond_1

    .line 5
    move-object v7, v5

    check-cast v7, La/b/a/m/a/h;

    .line 6
    iget-object v8, v7, La/b/a/n/a;->b:La/b/a/d$a;

    .line 7
    sget-object v9, La/b/a/d$a;->b:La/b/a/d$a;

    const-string v10, "Error loading audio file: "

    const/4 v11, 0x1

    if-ne v8, v9, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {v7}, La/b/a/m/a/h;->k()Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 9
    new-instance v7, La/b/a/m/a/u;

    iget-object v8, v4, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    iget-object v9, v4, La/b/a/m/a/f;->b:Landroid/media/AudioManager;

    iget-object v4, v4, La/b/a/m/a/f;->a:Landroid/media/SoundPool;

    invoke-virtual {v4, v6, v11}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-direct {v7, v8, v9, v4}, La/b/a/m/a/u;-><init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V

    .line 10
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, La/b/a/r/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nNote: Internal audio files must be placed in the assets directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :cond_0
    :try_start_1
    new-instance v8, La/b/a/m/a/u;

    iget-object v4, v4, La/b/a/m/a/f;->b:Landroid/media/AudioManager;

    invoke-virtual {v7}, La/b/a/m/a/h;->b()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v8, v6, v4, v7}, La/b/a/m/a/u;-><init>(Landroid/media/SoundPool;Landroid/media/AudioManager;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 13
    :goto_1
    invoke-virtual {v3, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception p1

    .line 14
    new-instance v0, La/b/a/r/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, La/b/a/r/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_1
    new-instance p1, La/b/a/r/d;

    const-string v0, "Android audio is not enabled by the application config."

    invoke-direct {p1, v0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public play(Ljava/lang/Object;FFF)J
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr p3, p2

    .line 2
    iget-boolean p2, p0, Lcom/watabou/noosa/audio/Sample;->enabled:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/watabou/noosa/audio/Sample;->ids:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/watabou/noosa/audio/Sample;->ids:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/b/a/l/b;

    iget p2, p0, Lcom/watabou/noosa/audio/Sample;->globalVolume:F

    mul-float p2, p2, v0

    invoke-interface {p1, p2, p4, p3}, La/b/a/l/b;->a(FFF)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method
