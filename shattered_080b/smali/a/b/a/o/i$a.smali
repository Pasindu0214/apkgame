.class public final enum La/b/a/o/i$a;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/b/a/o/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La/b/a/o/i$a;

.field public static final enum c:La/b/a/o/i$a;

.field public static final enum d:La/b/a/o/i$a;

.field public static final enum e:La/b/a/o/i$a;

.field public static final enum f:La/b/a/o/i$a;

.field public static final enum g:La/b/a/o/i$a;

.field public static final enum h:La/b/a/o/i$a;

.field public static final synthetic i:[La/b/a/o/i$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, La/b/a/o/i$a;

    const/4 v1, 0x0

    const-string v2, "Nearest"

    const/16 v3, 0x2600

    invoke-direct {v0, v2, v1, v3}, La/b/a/o/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$a;->b:La/b/a/o/i$a;

    .line 2
    new-instance v0, La/b/a/o/i$a;

    const/4 v2, 0x1

    const-string v3, "Linear"

    const/16 v4, 0x2601

    invoke-direct {v0, v3, v2, v4}, La/b/a/o/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$a;->c:La/b/a/o/i$a;

    .line 3
    new-instance v0, La/b/a/o/i$a;

    const/16 v3, 0x2703

    const/4 v4, 0x2

    const-string v5, "MipMap"

    invoke-direct {v0, v5, v4, v3}, La/b/a/o/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$a;->d:La/b/a/o/i$a;

    .line 4
    new-instance v0, La/b/a/o/i$a;

    const/4 v5, 0x3

    const-string v6, "MipMapNearestNearest"

    const/16 v7, 0x2700

    invoke-direct {v0, v6, v5, v7}, La/b/a/o/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$a;->e:La/b/a/o/i$a;

    .line 5
    new-instance v0, La/b/a/o/i$a;

    const/4 v6, 0x4

    const-string v7, "MipMapLinearNearest"

    const/16 v8, 0x2701

    invoke-direct {v0, v7, v6, v8}, La/b/a/o/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$a;->f:La/b/a/o/i$a;

    .line 6
    new-instance v0, La/b/a/o/i$a;

    const/4 v7, 0x5

    const-string v8, "MipMapNearestLinear"

    const/16 v9, 0x2702

    invoke-direct {v0, v8, v7, v9}, La/b/a/o/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$a;->g:La/b/a/o/i$a;

    .line 7
    new-instance v0, La/b/a/o/i$a;

    const/4 v8, 0x6

    const-string v9, "MipMapLinearLinear"

    invoke-direct {v0, v9, v8, v3}, La/b/a/o/i$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, La/b/a/o/i$a;->h:La/b/a/o/i$a;

    const/4 v3, 0x7

    new-array v3, v3, [La/b/a/o/i$a;

    .line 8
    sget-object v9, La/b/a/o/i$a;->b:La/b/a/o/i$a;

    aput-object v9, v3, v1

    sget-object v1, La/b/a/o/i$a;->c:La/b/a/o/i$a;

    aput-object v1, v3, v2

    sget-object v1, La/b/a/o/i$a;->d:La/b/a/o/i$a;

    aput-object v1, v3, v4

    sget-object v1, La/b/a/o/i$a;->e:La/b/a/o/i$a;

    aput-object v1, v3, v5

    sget-object v1, La/b/a/o/i$a;->f:La/b/a/o/i$a;

    aput-object v1, v3, v6

    sget-object v1, La/b/a/o/i$a;->g:La/b/a/o/i$a;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    sput-object v3, La/b/a/o/i$a;->i:[La/b/a/o/i$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, La/b/a/o/i$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/b/a/o/i$a;
    .locals 1

    .line 1
    const-class v0, La/b/a/o/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/b/a/o/i$a;

    return-object p0
.end method

.method public static values()[La/b/a/o/i$a;
    .locals 1

    .line 1
    sget-object v0, La/b/a/o/i$a;->i:[La/b/a/o/i$a;

    invoke-virtual {v0}, [La/b/a/o/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/b/a/o/i$a;

    return-object v0
.end method
