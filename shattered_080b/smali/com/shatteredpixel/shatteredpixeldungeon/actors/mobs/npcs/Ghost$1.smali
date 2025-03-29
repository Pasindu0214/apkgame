.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$1;
.super Ljava/lang/Object;
.source "Ghost.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;

    .line 2
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->type:I

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSadGhost;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost;I)V

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
