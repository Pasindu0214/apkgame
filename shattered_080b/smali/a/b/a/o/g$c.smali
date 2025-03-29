.class public final enum La/b/a/o/g$c;
.super Ljava/lang/Enum;
.source "Pixmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/b/a/o/g$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/b/a/o/g$c;

.field public static final enum b:La/b/a/o/g$c;

.field public static final enum c:La/b/a/o/g$c;

.field public static final enum d:La/b/a/o/g$c;

.field public static final enum e:La/b/a/o/g$c;

.field public static final enum f:La/b/a/o/g$c;

.field public static final enum g:La/b/a/o/g$c;

.field public static final synthetic h:[La/b/a/o/g$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, La/b/a/o/g$c;

    const/4 v1, 0x0

    const-string v2, "Alpha"

    invoke-direct {v0, v2, v1}, La/b/a/o/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$c;->a:La/b/a/o/g$c;

    new-instance v0, La/b/a/o/g$c;

    const/4 v2, 0x1

    const-string v3, "Intensity"

    invoke-direct {v0, v3, v2}, La/b/a/o/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$c;->b:La/b/a/o/g$c;

    new-instance v0, La/b/a/o/g$c;

    const/4 v3, 0x2

    const-string v4, "LuminanceAlpha"

    invoke-direct {v0, v4, v3}, La/b/a/o/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$c;->c:La/b/a/o/g$c;

    new-instance v0, La/b/a/o/g$c;

    const/4 v4, 0x3

    const-string v5, "RGB565"

    invoke-direct {v0, v5, v4}, La/b/a/o/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$c;->d:La/b/a/o/g$c;

    new-instance v0, La/b/a/o/g$c;

    const/4 v5, 0x4

    const-string v6, "RGBA4444"

    invoke-direct {v0, v6, v5}, La/b/a/o/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$c;->e:La/b/a/o/g$c;

    new-instance v0, La/b/a/o/g$c;

    const/4 v6, 0x5

    const-string v7, "RGB888"

    invoke-direct {v0, v7, v6}, La/b/a/o/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$c;->f:La/b/a/o/g$c;

    new-instance v0, La/b/a/o/g$c;

    const/4 v7, 0x6

    const-string v8, "RGBA8888"

    invoke-direct {v0, v8, v7}, La/b/a/o/g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    const/4 v8, 0x7

    new-array v8, v8, [La/b/a/o/g$c;

    .line 2
    sget-object v9, La/b/a/o/g$c;->a:La/b/a/o/g$c;

    aput-object v9, v8, v1

    sget-object v1, La/b/a/o/g$c;->b:La/b/a/o/g$c;

    aput-object v1, v8, v2

    sget-object v1, La/b/a/o/g$c;->c:La/b/a/o/g$c;

    aput-object v1, v8, v3

    sget-object v1, La/b/a/o/g$c;->d:La/b/a/o/g$c;

    aput-object v1, v8, v4

    sget-object v1, La/b/a/o/g$c;->e:La/b/a/o/g$c;

    aput-object v1, v8, v5

    sget-object v1, La/b/a/o/g$c;->f:La/b/a/o/g$c;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, La/b/a/o/g$c;->h:[La/b/a/o/g$c;

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

    return-void
.end method

.method public static a(I)La/b/a/o/g$c;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, La/b/a/o/g$c;->a:La/b/a/o/g$c;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, La/b/a/o/g$c;->c:La/b/a/o/g$c;

    return-object p0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, La/b/a/o/g$c;->d:La/b/a/o/g$c;

    return-object p0

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    .line 4
    sget-object p0, La/b/a/o/g$c;->e:La/b/a/o/g$c;

    return-object p0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 5
    sget-object p0, La/b/a/o/g$c;->f:La/b/a/o/g$c;

    return-object p0

    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 6
    sget-object p0, La/b/a/o/g$c;->g:La/b/a/o/g$c;

    return-object p0

    .line 7
    :cond_5
    new-instance v0, La/b/a/r/d;

    const-string v1, "Unknown Gdx2DPixmap Format: "

    invoke-static {v1, p0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, La/b/a/r/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)La/b/a/o/g$c;
    .locals 1

    .line 1
    const-class v0, La/b/a/o/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/b/a/o/g$c;

    return-object p0
.end method

.method public static values()[La/b/a/o/g$c;
    .locals 1

    .line 1
    sget-object v0, La/b/a/o/g$c;->h:[La/b/a/o/g$c;

    invoke-virtual {v0}, [La/b/a/o/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/b/a/o/g$c;

    return-object v0
.end method
