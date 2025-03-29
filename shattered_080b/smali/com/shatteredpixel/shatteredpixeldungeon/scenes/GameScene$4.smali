.class public final Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$4;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->examineCell(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$objects:Ljava/util/ArrayList;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$4;->val$objects:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene$4;->val$objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->examineObject(Ljava/lang/Object;)V

    return-void
.end method
